train = read.csv("train.csv", header = TRUE)
test.data = read.csv("test.csv", header = TRUE)
sample_sub = read.csv("sample_submission.csv", header = TRUE)
sapply(train, class)

unique(train$MSSubClass)
sum(is.na(train$MSSubClass))

sum(is.na(train$MSZoning))
unique(train$MSZoning)
train$MSZoning = as.factor(train$MSZoning)
class(train$MSZoning)
unique(train$MSZoning)

unique(train$LotFrontage)
class(train$LotFrontage)
train$LotFrontage[is.na(train$LotFrontage)] = 0
sum(is.na(train$LotFrontage))

class(train$LotArea)
sum(is.na(train$LotArea))

class(train$Street)
sum(is.na(train$Street))
train$Street = as.factor(train$Street)
unique(train$Street)

class(train$Alley)
train$Alley[is.na(train$Alley)] = "NoAlley"
sum(is.na(train$Alley))
train$Alley = as.factor(train$Alley)
unique(train$Alley)

class(train$LotShape)
sum(is.na(train$LotShape))
train$LotShape = as.factor(train$LotShape)
unique(train$LotShape)

class(train$LandContour)
sum(is.na(train$LandContour))
train$LandContour = as.factor(train$LandContour)
unique(train$LandContour)

class(train$Utilities)
sum(is.na(train$Utilities))
train$Utilities = as.factor(train$Utilities)
unique(train$Utilities)

class(train$LotConfig)
sum(is.na(train$LotConfig))
train$LotConfig = as.factor(train$LotConfig)
unique(train$LotConfig)

class(train$LandSlope)
sum(is.na(train$LandSlope))
train$LandSlope = as.factor(train$LandSlope)
unique(train$LandSlope)

class(train$Neighborhood)
sum(is.na(train$Neighborhood))
train$Neighborhood = as.factor(train$Neighborhood)
unique(train$Neighborhood)

class(train$Condition1)
sum(is.na(train$Condition1))
train$Condition1 = as.factor(train$Condition1)
unique(train$Condition1)

class(train$Condition2)
sum(is.na(train$Condition2))
train$Condition2 = as.factor(train$Condition2)
unique(train$Condition2)

class(train$BldgType)
sum(is.na(train$BldgType))
train$BldgType = as.factor(train$BldgType)
unique(train$BldgType)

class(train$HouseStyle)
sum(is.na(train$HouseStyle))
train$HouseStyle = as.factor(train$HouseStyle)
unique(train$HouseStyle)

class(train$OverallQual)
sum(is.na(train$OverallQual))
train$OverallQual = as.factor(train$OverallQual)
unique(train$OverallQual)

class(train$OverallCond)
sum(is.na(train$OverallCond))
train$OverallCond = as.factor(train$OverallCond)
unique(train$OverallCond)

class(train$YearBuilt)
sum(is.na(train$YearBuilt))

class(train$YearRemodAdd)
sum(is.na(train$YearRemodAdd))

class(train$RoofStyle)
sum(is.na(train$RoofStyle))
train$RoofStyle = as.factor(train$RoofStyle)
unique(train$RoofStyle)

class(train$RoofMatl)
sum(is.na(train$RoofMatl))
train$RoofMatl = as.factor(train$RoofMatl)
unique(train$RoofMatl)

class(train$Exterior1st)
sum(is.na(train$Exterior1st))
train$Exterior1st = as.factor(train$Exterior1st)
unique(train$Exterior1st)

class(train$Exterior2nd)
sum(is.na(train$Exterior2nd))
train$Exterior2nd = as.factor(train$Exterior2nd)
unique(train$Exterior2nd)

class(train$MasVnrType)
sum(is.na(train$MasVnrType))
train$MasVnrType[is.na(train$MasVnrType)] = "None"
train$MasVnrType = as.factor(train$MasVnrType)
unique(train$MasVnrType)

class(train$MasVnrArea)
sum(is.na(train$MasVnrArea))
train$MasVnrArea[is.na(train$MasVnrArea)] = 0

class(train$ExterQual)
sum(is.na(train$ExterQual))
train$ExterQual = as.factor(train$ExterQual)
unique(train$ExterQual)

class(train$ExterCond)
sum(is.na(train$ExterCond))
train$ExterCond = as.factor(train$ExterCond)
unique(train$ExterCond)

class(train$Foundation)
sum(is.na(train$Foundation))
train$Foundation = as.factor(train$Foundation)
unique(train$Foundation)

class(train$BsmtQual)
sum(is.na(train$BsmtQual))
train$BsmtQual[is.na(train$BsmtQual)] = "TA"
train$BsmtQual = as.factor(train$BsmtQual)
unique(train$BsmtQual)

class(train$BsmtCond)
sum(is.na(train$BsmtCond))
train$BsmtCond[is.na(train$BsmtCond)] = "None"
train$BsmtCond = as.factor(train$BsmtCond)
unique(train$BsmtCond)

class(train$BsmtExposure)
sum(is.na(train$BsmtExposure))
train$BsmtExposure[is.na(train$BsmtExposure)] = "No"
train$BsmtExposure = as.factor(train$BsmtExposure)
unique(train$BsmtExposure)

class(train$BsmtFinType1)
sum(is.na(train$BsmtFinType1))
train$BsmtFinType1[is.na(train$BsmtFinType1)] = "Unf"
train$BsmtFinType1 = as.factor(train$BsmtFinType1)
unique(train$BsmtFinType1)

class(train$BsmtFinSF1)
sum(is.na(train$BsmtFinSF1))

class(train$BsmtFinType2)
sum(is.na(train$BsmtFinType2))
train$BsmtFinType2[is.na(train$BsmtFinType2)] = "None"
train$BsmtFinType2 = as.factor(train$BsmtFinType2)
unique(train$BsmtFinType2)

class(train$BsmtFinSF2)
sum(is.na(train$BsmtFinSF2))

class(train$BsmtUnfSF)
sum(is.na(train$BsmtUnfSF))

class(train$TotalBsmtSF)
sum(is.na(train$TotalBsmtSF))

class(train$Heating)
sum(is.na(train$Heating))
train$Heating = as.factor(train$Heating)
unique(train$Heating)

class(train$HeatingQC)
sum(is.na(train$HeatingQC))
train$HeatingQC = as.factor(train$HeatingQC)
unique(train$HeatingQC)

class(train$CentralAir)
sum(is.na(train$CentralAir))
train$CentralAir = as.factor(train$CentralAir)
unique(train$CentralAir)

class(train$Electrical)
sum(is.na(train$Electrical))
train$Electrical[is.na(train$Electrical)] = "Mix"
train$Electrical = as.factor(train$Electrical)
unique(train$Electrical)

class(train$X1stFlrSF)
sum(is.na(train$X1stFlrSF))

class(train$X2ndFlrSF)
sum(is.na(train$X2ndFlrSF))

class(train$LowQualFinSF)
sum(is.na(train$LowQualFinSF))

class(train$GrLivArea)
sum(is.na(train$GrLivArea))

class(train$BsmtFullBath)
sum(is.na(train$BsmtFullBath))

class(train$BsmtHalfBath)
sum(is.na(train$BsmtHalfBath))

class(train$FullBath)
sum(is.na(train$FullBath))

class(train$HalfBath)
sum(is.na(train$HalfBath))

class(train$Bedroom)
sum(is.na(train$Bedroom))

class(train$KitchenAbvGr)
sum(is.na(train$KitchenAbvGr))

class(train$KitchenQual)
sum(is.na(train$KitchenQual))
train$KitchenQual = as.factor(train$KitchenQual)
unique(train$KitchenQual)

class(train$TotRmsAbvGrd)
sum(is.na(train$TotRmsAbvGrd))

class(train$Functional)
sum(is.na(train$Functional))
train$Functional = as.factor(train$Functional)
unique(train$Functional)

class(train$Fireplaces)
sum(is.na(train$Fireplaces))

class(train$FireplaceQu)
sum(is.na(train$FireplaceQu))
train$FireplaceQu[is.na(train$FireplaceQu)] = "TA"
train$FireplaceQu = as.factor(train$FireplaceQu)
unique(train$FireplaceQu)

class(train$GarageType)
sum(is.na(train$GarageType))
train$GarageType[is.na(train$GarageType)] = "Detchd"
train$GarageType = as.factor(train$GarageType)
unique(train$GarageType)

class(train$GarageYrBlt)
mean(train$GarageYrBlt[!is.na(train$GarageYrBlt)]) # 1978.506
median(train$GarageYrBlt[!is.na(train$GarageYrBlt)]) # 1980
range(train$GarageYrBlt[!is.na(train$GarageYrBlt)]) # 1900 2010
quantile(train$GarageYrBlt[!is.na(train$GarageYrBlt)]) # 1900 1961 1980 2002 2010
train$GarageYrBlt[is.na(train$GarageYrBlt)] = 1980
sum(is.na(train$GarageYrBlt))

class(train$GarageFinish)
sum(is.na(train$GarageFinish))
train$GarageFinish[is.na(train$GarageFinish)] = "Unf"
train$GarageFinish = as.factor(train$GarageFinish)
unique(train$GarageFinish)

class(train$GarageCars)
sum(is.na(train$GarageCars))

class(train$GarageArea)
sum(is.na(train$GarageArea))

class(train$GarageQual)
sum(is.na(train$GarageQual))
train$GarageQual[is.na(train$GarageQual)] = "None"
train$GarageQual = as.factor(train$GarageQual)
unique(train$GarageQual)

class(train$GarageCond)
sum(is.na(train$GarageCond))
train$GarageCond[is.na(train$GarageCond)] = "None"
train$GarageCond = as.factor(train$GarageCond)
unique(train$GarageCond)

class(train$PavedDrive)
sum(is.na(train$PavedDrive))
train$PavedDrive = as.factor(train$PavedDrive)
unique(train$PavedDrive)

class(train$WoodDeckSF)
sum(is.na(train$WoodDeckSF))

class(train$OpenPorchSF)
sum(is.na(train$OpenPorchSF))

class(train$EnclosedPorch)
sum(is.na(train$EnclosedPorch))

class(train$X3SsnPorch)
sum(is.na(train$X3SsnPorch))

class(train$ScreenPorch)
sum(is.na(train$ScreenPorch))

class(train$PoolArea)
sum(is.na(train$PoolArea))

class(train$PoolQC)
sum(is.na(train$PoolQC))
train$PoolQC[is.na(train$PoolQC)] = "None"
train$PoolQC = as.factor(train$PoolQC)
unique(train$PoolQC)

class(train$Fence)
sum(is.na(train$Fence))
train$Fence[is.na(train$Fence)] = "None"
train$Fence = as.factor(train$Fence)
unique(train$Fence)

class(train$MiscFeature)
sum(is.na(train$MiscFeature))
train$MiscFeature[is.na(train$MiscFeature)] = "None"
train$MiscFeature = as.factor(train$MiscFeature)
unique(train$MiscFeature)

class(train$MiscVal)
sum(is.na(train$MiscVal))

class(train$MoSold)
sum(is.na(train$MoSold))

class(train$YrSold)
sum(is.na(train$YrSold))

class(train$SaleType)
sum(is.na(train$SaleType))
train$SaleType = as.factor(train$SaleType)
unique(train$SaleType)

class(train$SaleCondition)
sum(is.na(train$SaleCondition))
train$SaleCondition = as.factor(train$SaleCondition)
unique(train$SaleCondition)

class(train$SalePrice)
sum(is.na(train$SalePrice))

# Analytics


library(glmnet)
library(dplyr)
library(ggplot2)
library(GGally)
library(psych)
library(car)
library(tidyr)

set.seed(0)
train.rows = sample(1:nrow(train), 7 * nrow(train) / 10)
train.T = train[-train.rows,]
train = train[train.rows,]


train.Matrix = model.matrix(SalePrice ~ ., train)[,-1]
SalePrice = train$SalePrice
train.T.Matrix = model.matrix(SalePrice ~ ., train.T)[,-1]
SalePrice.T = train.T$SalePrice


ridge.Regression = cv.glmnet(
  train.Matrix,
  SalePrice,
  type.measure = "mse",
  alpha = 0,
  nfolds = 10
)
bestlambda.ridge = ridge.Regression$lambda.1se
bestlambda.ridge
log(bestlambda.ridge)

ridge.Regression.Predict = predict(ridge.Regression, s = bestlambda.ridge, train.T.Matrix)
cor(ridge.Regression.Predict, SalePrice.T) # 0.9098346
plot(ridge.Regression, main = "Ridge Regression\n")
coef(ridge.Regression, s = ridge.Regression$lambda.1se)

lasso.Regression = cv.glmnet(
  train.Matrix,
  SalePrice,
  type.measure = "mse",
  alpha = 1,
  nfolds = 10
)
bestlambda.lasso = lasso.Regression$lambda.1se
bestlambda.lasso
log(bestlambda.lasso)

lasso.Regression.Predict = predict(lasso.Regression, s = bestlambda.lasso, train.T.Matrix)
cor(lasso.Regression.Predict, SalePrice.T) # 0.8935938
plot(lasso.Regression, main = "Lasso Regression\n")
coef(lasso.Regression, s = lasso.Regression$lambda.1se)

for (i in 0:10) {
  alph.Net = i / 10
  elas.Net = cv.glmnet(
    train.Matrix,
    SalePrice,
    type.measure = "mse",
    alpha = alph.Net,
    nfolds = 10
  )
  elas.Net.Predict = predict(elas.Net, s = elas.Net$lambda.1se, train.T.Matrix)
  print(alph.Net)
  print(cor(elas.Net.Predict, SalePrice.T))
} # 0.9168661


