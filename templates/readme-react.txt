import { Preview, Props, Description, Story } from '@storybook/addon-docs/blocks';
import contributing from '../../../../../../docs/contributing-license.md';
import { PropTypesRef } from '@carbon/ibmdotcom-web-components/es/components-react/$COMPONENT_NAME/$COMPONENT_NAME';

# $DDS_NAME_SPACE

> 💡 Check our
> [CodeSandbox](https://githubbox.com/carbon-design-system/carbon-for-ibm-dotcom/tree/master/packages/web-components/examples/codesandbox/components-react/$COMPONENT_NAME)
> example implementation.

[![Edit @carbon/ibmdotcom-web-components](https://codesandbox.io/static/img/play-codesandbox.svg)](https://githubbox.com/carbon-design-system/carbon-for-ibm-dotcom/tree/master/packages/web-components/examples/codesandbox/components-react/$COMPONENT_NAME)

## Getting started

Here's a quick example to get you started.

### JS

\`\`\`javascript
import DDS$DDS_NAME from '@carbon/ibmdotcom-web-components/es/components-react/$COMPONENT_NAME/$COMPONENT_NAME.js';

function App() {
  return (
  <DDS$DDS_NAME></DDS$DDS_NAME>
  );
}
\`\`\`

## Props

<Props of={PropTypesRef} />

## Stable selectors

See [our README](https://github.com/carbon-design-system/carbon-for-ibm-dotcom/tree/master/packages/web-components#stable-selectors-for-analytics-and-integratione2e-testing-in-web-components) to see how Web Components selector and \`data-autoid\` should be used.

| Web Components selector | Compatibility selector | Description |
| ----------------------- | ---------------------- | ----------- |
| \`<dds-$COMPONENT_NAME>\`        | N/A                    | Component   |

<Description markdown={contributing} />