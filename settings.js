module.exports = {
  uiPort: process.env.PORT || 5000,
  userDir: ".nodered/",
  flowFile: "flows.json",
  credentialSecret: process.env.SECRET || false,
  adminAuth: process.env.AUTH_METHOD
    ? require("./settings_" + process.env.AUTH_METHOD + ".js")
    : require("./settings.js"),
  apiMaxLength: process.env.API_MAX_LENGTH,
  editorTheme: {
    page: {
      css: "/app/css/node-red.css",
    },
    header: {
      title: process.env.TITLE || "Docker node-red",
      image: null,
      url: "#",
    },
  },
  logging: {
    customLogging: {
      level: "debug",
      metrics: false,
      handler: function (settings) {
        return function (msg) {
          console.log(msg.timestamp, msg);
        };
      },
    },
  },
};
