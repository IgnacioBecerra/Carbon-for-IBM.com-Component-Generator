import { Props, Description } from '@storybook/addon-docs/blocks';
import contributing from '../../../../../../docs/contributing-license.md';
import markdownContents from '../../../../docs/markdown-contents.md';
import { cdnJs, cdnCss } from '../../../globals/internal/storybook-cdn';



# $DDS_NAME_SPACE

> 💡 Check our
> [CodeSandbox](https://githubbox.com/carbon-design-system/carbon-for-ibm-dotcom/tree/master/packages/web-components/examples/codesandbox/components/$COMPONENT_NAME)
> example implementation.

[![Edit @carbon/ibmdotcom-web-components](https://codesandbox.io/static/img/play-codesandbox.svg)](https://githubbox.com/carbon-design-system/carbon-for-ibm-dotcom/tree/master/packages/web-components/examples/codesandbox/components/$COMPONENT_NAME)

## Getting started

Here's a quick example to get you started.

### JS (via import)

\`\`\`javascript
import '@carbon/ibmdotcom-web-components/es/components/$COMPONENT_NAME/index.js';
\`\`\`

<Description markdown={\`\${cdnJs({ components: ['$COMPONENT_NAME'] })}\`} />

<Description markdown={\`\${cdnCss()}\`} />

### HTML

\`\`\`html
<dds-$COMPONENT_NAME><dds-$COMPONENT_NAME>
\`\`\`

## Props

<Props of="dds-$COMPONENT_NAME" />

## Stable selectors

See [our README](https://github.com/carbon-design-system/carbon-for-ibm-dotcom/tree/master/packages/web-components#stable-selectors-for-analytics-and-integratione2e-testing-in-web-components) to see how Web Components selector and \`data-autoid\` should be used.

| Web Components selector     | Compatibility selector                   | Description |
| --------------------------- | ---------------------------------------- | ----------- |
| \`<dds-$COMPONENT_NAME>\`     | \`data-autoid="dds--$COMPONENT_NAME"\`     | Component   |

<Description markdown={contributing} />