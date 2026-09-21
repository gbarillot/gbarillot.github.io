import { getPermalink } from './utils/permalinks';

export const headerData = {
  links: [
    { text: 'Vos enjeux', href: getPermalink('/#enjeux') },
    { text: 'Solutions', href: getPermalink('/#services') },
    { text: "Cas d'usage", href: getPermalink('/#cas-usage') },
    { text: 'Notre approche', href: getPermalink('/#approche') },
    { text: 'FAQ', href: getPermalink('/#faq') },
  ],
  actions: [{ variant: 'primary' as const, text: 'Prendre rendez-vous', href: getPermalink('/#contact') }],
};

export const footerData = {
  links: [
    {
      title: 'PME + AI',
      links: [
        { text: 'Vos enjeux', href: getPermalink('/#enjeux') },
        { text: 'Nos solutions', href: getPermalink('/#services') },
        { text: "Cas d'usage", href: getPermalink('/#cas-usage') },
        { text: 'Notre approche', href: getPermalink('/#approche') },
      ],
    },
    {
      title: 'Échanger',
      links: [
        { text: 'Prendre rendez-vous', href: getPermalink('/#contact') },
        { text: 'Questions fréquentes', href: getPermalink('/#faq') },
      ],
    },
  ],
  secondaryLinks: [
    { text: 'Mentions légales', href: getPermalink('/terms') },
    { text: 'Confidentialité', href: getPermalink('/privacy') },
  ],
  socialLinks: [],
  footNote: `© ${new Date().getFullYear()} PME + AI. Tous droits réservés.`,
};
