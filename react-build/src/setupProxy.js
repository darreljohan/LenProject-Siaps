const { createProxyMiddleware } = require("http-proxy-middleware");

// eslint-disable-next-line no-undef
module.exports = function (app) {
  app.use(
    "/api",
    createProxyMiddleware({
      target: "https://script.google.com",
      changeOrigin: true,
    }),
  );
};
