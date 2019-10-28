module.exports = {
  extends: 'stylelint-config-standard',
  plugins: ['stylelint-scss'],
  rules: {
    'at-rule-no-unknown': null,
    'at-rule-empty-line-before': null,
    'block-closing-brace-newline-after': null,
    'declaration-colon-newline-after': null,
    'scss/at-rule-no-unknown': true,
    'no-descending-specificity': null,
    'selector-pseudo-element-colon-notation': null,
    indentation: null
  }
};
