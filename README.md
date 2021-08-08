# Carbon-for-IBM.com-Component-Generator
Create a new component, sandbox environment, and e2e tests with a single command.

Usage:
1. Drag and drop the contents of this repo into the `/packages/web-components`
2. Run `./generate.sh component-name-here`
3. ???
4. Profit

## React Wrapper
If you're also looking to make a React Wrapper, you can add the `-wrapper` flag to the above command.

## Example
Let's create a new component called "New Component", and its React wrapper.

`./generate.sh new-component -wrapper`

And this command will create the entire directory and basic files necessary to create such a component under the following directories:

Component Files + Stories/READMEs
* `src/components/new-component/`
* `src/components/new-component/__stories__/`
* `/package/styles/scss/components/new-component/`

Sandbox Example
* `examples/codesandbox/components/new-component/`
* `examples/codesandbox/components/new-component/src/`
* `examples/codesandbox/components-react/new-component/`
* `examples/codesandbox/components-react/new-component/src/`

e2e tests
* `tests/e2e/__tests__/new-component/`

