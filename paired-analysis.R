library(readxl)

veri <- read_excel("paired_veri.xlsx", sheet = 3)

head(veri)

x <- veri$`Veri 69`
x

# [TR] Shapiro-Wilk normallik testi uygulanmıştır.
# [EN] Shapiro-Wilk normality test was applied.

shapiro.test(x)

# [TR] p-değeri = 0.1057 > 0.05 olduğu için veri normal dağılım göstermektedir.
# [TR] Bu nedenle parametrik test (paired t-test) kullanılacaktır.

# [EN] Since p-value = 0.1057 > 0.05, the data is normally distributed.
# [EN] Therefore, a parametric test (paired t-test) will be used.

length(x)

once <- x[1:20]
sonra <- x[21:40]

once
sonra

t.test(once, sonra, paired = TRUE)

# [TR] Bağımlı örneklem t-testi uygulanmıştır.
# [EN] Paired sample t-test was applied.

t.test(once, sonra, paired = TRUE)

# [TR] p-değeri = 0.3187 > 0.05 olduğu için istatistiksel olarak anlamlı bir fark yoktur.
# [TR] Eğitim öncesi ve sonrası arasında anlamlı bir değişim gözlenmemiştir.

# [EN] Since p-value = 0.3187 > 0.05, there is no statistically significant difference.
# [EN] No significant change was observed between before and after measurements.
