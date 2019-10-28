module.exports = {
  extends: ['airbnb-base', 'prettier'],
  env: {
    browser: true,
    node: true
  },
  rules: {
    'import/prefer-default-export': 0,
    'no-console': 1,
    'no-unused-vars': 1,
    'func-names': 0
  }
};
