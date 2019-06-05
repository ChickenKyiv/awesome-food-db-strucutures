nutrition_DV_SLR <- read.csv("C:/Users/Jennifer Jin/cmu/Fall2016/67475 Innovation in Information Systems/nutrition_DV_SLR.csv")

#replace all NA with 0
nutrition_DV_SLR[is.na(nutrition_DV_SLR)] <- 0 
n <- nutrition_DV_SLR
hist(n$Score)
fit <- lm(Score ~ Protein + Lipid_Tot + Carbohydrt + Fiber_TD + Sugar_Tot + Calcium_DV + Iron_DV + Sodium + Vit_C_DV + Vit_A_DV + FA_Sat + Cholestrl, data=n)
summary(fit)
coefficients(fit)
res <- resid(fit)
plot(x=n$Score, y = res, xlab = "Score", ylab = "Residuals", main="Scores vs Residuals for Linear Regression")
abline(0,0, col=2)

