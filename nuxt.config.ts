// https://nuxt.com/docs/api/configuration/nuxt-config
export default defineNuxtConfig({
    modules: [
        '@nuxtjs/tailwindcss',
        'nuxt-security',
    ],
    typescript: {
        typeCheck: true
    },
    // Nuxt-security Settings
    // Reference: https://nuxt-security.vercel.app/
    security: {
        headers: {
            contentSecurityPolicy: "img-src 'self' https:;",
            crossOriginEmbedderPolicy: false,
        },
    },
})
