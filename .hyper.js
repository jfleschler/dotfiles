module.exports = {
  config: {
    fontSize: 13,
    fontFamily:
      '"Fira Code", Menlo, "DejaVu Sans Mono", Consolas, "Lucida Console", monospace',
    padding: '16px 14px 24px',
    webGLRenderer: false,

    activeTab: '🚀',
    summon: {
      hotkey: 'Command+Shift+1',
    },
  },
  plugins: [
    'hyper-font-ligatures',
    'hyper-search',
    'hyper-pane',
    'hypercwd',
    'hyper-active-tab',
    'hyperline',
    'hyper-snazzy',
    'hyperterm-summon',
  ],
};
