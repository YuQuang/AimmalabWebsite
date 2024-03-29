export default defineEventHandler((event) => {
  event.node.res.setHeader("Strict-Transport-Security", "max-age=31536000; includeSubDomains")
  event.node.res.setHeader("X-Frame-Options", "DENY")
  event.node.res.setHeader("access-control-allow-origin", "https://website.aimmalab.com")
})