package org.folio.calendar.unit.i18n;

import static org.hamcrest.MatcherAssert.assertThat;
import static org.hamcrest.Matchers.arrayContaining;
import static org.hamcrest.Matchers.is;

import org.folio.calendar.i18n.TranslationFile;
import org.junit.jupiter.api.Test;

public class TranslationFileTest {

  @Test
  void testGetParts() {
    assertThat(
      "en_us.json parses to [en, us]",
      TranslationFile.getParts("en_us.json"),
      is(arrayContaining("en", "us"))
    );
    assertThat(
      "en_us parses to [en, us]",
      TranslationFile.getParts("en_us"),
      is(arrayContaining("en", "us"))
    );
    assertThat(
      "EN_US parses to [en, us]",
      TranslationFile.getParts("EN_US"),
      is(arrayContaining("en", "us"))
    );
    assertThat(
      "en.json parses to [en, *]",
      TranslationFile.getParts("en.json"),
      is(arrayContaining("en", "*"))
    );
    assertThat(
      "\"\" parses to [*, *]",
      TranslationFile.getParts(""),
      is(arrayContaining("*", "*"))
    );
    assertThat("_ parses to [*, *]", TranslationFile.getParts("_"), is(arrayContaining("*", "*")));
    assertThat(
      "en_us_extra parses to [en, us]",
      TranslationFile.getParts("en_us_extra"),
      is(arrayContaining("en", "us"))
    );
    assertThat(
      "en_ parses to [en, *]",
      TranslationFile.getParts("en_"),
      is(arrayContaining("en", "*"))
    );
    assertThat(
      "en__foo parses to [en, *]",
      TranslationFile.getParts("en__foo"),
      is(arrayContaining("en", "*"))
    );
    assertThat(
      "_us parses to [*, us]",
      TranslationFile.getParts("_us"),
      is(arrayContaining("*", "us"))
    );
    assertThat(
      "null parses to [*, *]",
      TranslationFile.getParts(null),
      is(arrayContaining("*", "*"))
    );
  }
}
