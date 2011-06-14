%module gettext
%{
#include<libintl.h>
#include<locale.h>
%}

extern char *gettext (const char *__msgid);
extern char *dgettext (const char *__domainname, const char *__msgid);
extern char *dcgettext (const char *__domainname,
			const char *__msgid, int __category);
extern char *ngettext (const char *__msgid1, const char *__msgid2,
		       unsigned long int __n);
extern char *dngettext (const char *__domainname, const char *__msgid1,
			const char *__msgid2, unsigned long int __n);
extern char *textdomain (const char *__domainname);
extern char *bindtextdomain (const char *__domainname,
			     const char *__dirname);
extern char *bind_textdomain_codeset (const char *__domainname,
				      const char *__codeset);
enum
{
  __LC_CTYPE = 0,
  __LC_NUMERIC = 1,
  __LC_TIME = 2,
  __LC_COLLATE = 3,
  __LC_MONETARY = 4,
  __LC_MESSAGES = 5,
  __LC_ALL = 6,
  __LC_PAPER = 7,
  __LC_NAME = 8,
  __LC_ADDRESS = 9,
  __LC_TELEPHONE = 10,
  __LC_MEASUREMENT = 11,
  __LC_IDENTIFICATION = 12
};
#define LC_CTYPE          __LC_CTYPE
#define LC_NUMERIC        __LC_NUMERIC
#define LC_TIME           __LC_TIME
#define LC_COLLATE        __LC_COLLATE
#define LC_MONETARY       __LC_MONETARY
#define LC_MESSAGES       __LC_MESSAGES
#define	LC_ALL		  __LC_ALL
#define LC_PAPER	  __LC_PAPER
#define LC_NAME		  __LC_NAME
#define LC_ADDRESS	  __LC_ADDRESS
#define LC_TELEPHONE	  __LC_TELEPHONE
#define LC_MEASUREMENT	  __LC_MEASUREMENT
#define LC_IDENTIFICATION __LC_IDENTIFICATION

struct lconv
{
  /* Numeric (non-monetary) information.  */

  char *decimal_point;		/* Decimal point character.  */
  char *thousands_sep;		/* Thousands separator.  */
  /* Each element is the number of digits in each group;
     elements with higher indices are farther left.
     An element with value CHAR_MAX means that no further grouping is done.
     An element with value 0 means that the previous element is used
     for all groups farther left.  */
  char *grouping;

  /* Monetary information.  */

  /* First three chars are a currency symbol from ISO 4217.
     Fourth char is the separator.  Fifth char is '\0'.  */
  char *int_curr_symbol;
  char *currency_symbol;	/* Local currency symbol.  */
  char *mon_decimal_point;	/* Decimal point character.  */
  char *mon_thousands_sep;	/* Thousands separator.  */
  char *mon_grouping;		/* Like `grouping' element (above).  */
  char *positive_sign;		/* Sign for positive values.  */
  char *negative_sign;		/* Sign for negative values.  */
  char int_frac_digits;		/* Int'l fractional digits.  */
  char frac_digits;		/* Local fractional digits.  */
  /* 1 if currency_symbol precedes a positive value, 0 if succeeds.  */
  char p_cs_precedes;
  /* 1 iff a space separates currency_symbol from a positive value.  */
  char p_sep_by_space;
  /* 1 if currency_symbol precedes a negative value, 0 if succeeds.  */
  char n_cs_precedes;
  /* 1 iff a space separates currency_symbol from a negative value.  */
  char n_sep_by_space;
  /* Positive and negative sign positions:
     0 Parentheses surround the quantity and currency_symbol.
     1 The sign string precedes the quantity and currency_symbol.
     2 The sign string follows the quantity and currency_symbol.
     3 The sign string immediately precedes the currency_symbol.
     4 The sign string immediately follows the currency_symbol.  */
  char p_sign_posn;
  char n_sign_posn;
#ifdef __USE_ISOC99
  /* 1 if int_curr_symbol precedes a positive value, 0 if succeeds.  */
  char int_p_cs_precedes;
  /* 1 iff a space separates int_curr_symbol from a positive value.  */
  char int_p_sep_by_space;
  /* 1 if int_curr_symbol precedes a negative value, 0 if succeeds.  */
  char int_n_cs_precedes;
  /* 1 iff a space separates int_curr_symbol from a negative value.  */
  char int_n_sep_by_space;
  /* Positive and negative sign positions:
     0 Parentheses surround the quantity and int_curr_symbol.
     1 The sign string precedes the quantity and int_curr_symbol.
     2 The sign string follows the quantity and int_curr_symbol.
     3 The sign string immediately precedes the int_curr_symbol.
     4 The sign string immediately follows the int_curr_symbol.  */
  char int_p_sign_posn;
  char int_n_sign_posn;
#else
  char __int_p_cs_precedes;
  char __int_p_sep_by_space;
  char __int_n_cs_precedes;
  char __int_n_sep_by_space;
  char __int_p_sign_posn;
  char __int_n_sign_posn;
#endif
};
/* Set and/or return the current locale.  */
extern char *setlocale (int __category, const char *__locale);

/* Return the numeric/monetary information for the current locale.  */
extern struct lconv *localeconv (void);
