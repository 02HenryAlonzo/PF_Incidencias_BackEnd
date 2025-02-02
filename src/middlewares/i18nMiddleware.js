import i18next from 'i18next'
import Backend from 'i18next-fs-backend'
import middleware from 'i18next-http-middleware'

i18next
  .use(Backend)
  .use(middleware.LanguageDetector)
  .init({
    fallbackLng: 'es',
    backend: {
      loadPath: './locales/{{lng}}/{{ns}}.json'
    }
  })

export const i18nMiddleware = middleware.handle(i18next)
