#!/bin/sh


#define parameters which are passed in.
COMPONENT_NAME=$1

DDS_NAME=$(echo "$COMPONENT_NAME" | sed -e 's/\(^\|-\)\([a-z]\)/\1\u\2/g')
DDS_NAME=$(echo "$DDS_NAME" | sed -e 's/\(^\|-\)\([a-z]\)/\1\u\2/g;s/-//g')
DDS_NAME_SPACE=$(echo "$DDS_NAME" | sed -r -e "s/([^A-Z])([A-Z])/\1 \2/g")

COMPONENT_DIR="src/components/$COMPONENT_NAME"
STORIES_DIR="$COMPONENT_DIR/__stories__"
STYLE_DIR="../styles/scss/components/$COMPONENT_NAME"
SANDBOX_DIR="examples/codesandbox/components/$COMPONENT_NAME"
SANDBOX_REACT_DIR="examples/codesandbox/components-react/$COMPONENT_NAME"
E2E_DIR="tests/e2e/__tests__/$COMPONENT_NAME"

if [ "$3" == "-dev" ]; then
	rm -r "$STORIES_DIR"
	rm -r "$STYLE_DIR"
	rm -r "$SANDBOX_DIR/src"
	rm -r "$SANDBOX_REACT_DIR/src"
	rm -r "$E2E_DIR"
fi

if [ "$2" == "-wrapper-only" ]; then
  mkdir -p "$SANDBOX_REACT_DIR/src"
  else
    mkdir -p "$STORIES_DIR"
    mkdir -p "$STYLE_DIR"
    mkdir -p "$SANDBOX_DIR/src"
    mkdir -p "$SANDBOX_REACT_DIR/src"
    mkdir -p "$E2E_DIR"
fi


function generate_file() {
	eval "cat <<-EOF
	$(<./templates/$1.txt)
	EOF
	" > "$2"
}

function generate_component() {
	generate_file "component" "$COMPONENT_DIR/$COMPONENT_NAME.ts"
	generate_file "style" "$COMPONENT_DIR/$COMPONENT_NAME.scss"
	generate_file "style-origin" "$STYLE_DIR/_$COMPONENT_NAME.scss"
	generate_file "index" "$COMPONENT_DIR/index.ts"
}

function generate_stories() {
	generate_file "stories" "$STORIES_DIR/$COMPONENT_NAME.stories.ts"
	generate_file "readme" "$STORIES_DIR/README.stories.mdx"
}

function generate_e2e() {
	generate_file "e2e" "$E2E_DIR/$COMPONENT_NAME.e2e.js"
	generate_file "cdn-e2e" "$E2E_DIR/$COMPONENT_NAME.cdn.e2e.js"
}

function generate_sandbox() {
	generate_file "sandbox-package" "$SANDBOX_DIR/package.json"
	generate_file "sandbox-config" "$SANDBOX_DIR/sandbox.config.json"
	generate_file "sandbox-index" "$SANDBOX_DIR/index.html"
	generate_file "sandbox-cdn" "$SANDBOX_DIR/cdn.html"
	generate_file "sandbox-gitignore" "$SANDBOX_DIR/.gitignore"
	generate_file "sandbox-babel" "$SANDBOX_DIR/.babelrc"
	generate_file "sandbox-index-js" "$SANDBOX_DIR/src/index.js"
}

function generate_react_wrapper() {
	generate_file "stories-react" "$STORIES_DIR/$COMPONENT_NAME.stories.react.tsx"
	generate_file "readme-react" "$STORIES_DIR/README.stories.react.mdx"
}

function generate_react_sandbox() {
	generate_file "webpack-config" "$SANDBOX_REACT_DIR/webpack.config.js"
	generate_file "sandbox-config" "$SANDBOX_REACT_DIR/sandbox.config.json"
	generate_file "sandbox-react-package" "$SANDBOX_REACT_DIR/package.json"
	generate_file "sandbox-react-index" "$SANDBOX_REACT_DIR/index.html"
	generate_file "sandbox-react-gitignore" "$SANDBOX_REACT_DIR/.gitignore"
	generate_file "sandbox-react-index-js" "$SANDBOX_REACT_DIR/src/index.js"
	generate_file "sandbox-react-index-css" "$SANDBOX_REACT_DIR/src/index.css"
}
if [ "$2" != '-wrapper-only' ]; then
  generate_component
  generate_stories
  generate_e2e
  generate_sandbox
fi

if [ "$2" == '-wrapper' ] || [ "$2" == '-wrapper-only' ]; then
	generate_react_wrapper
	generate_react_sandbox
fi
