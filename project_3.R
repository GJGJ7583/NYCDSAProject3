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

set.seed(0)
train.rows = sample(1:nrow(train), 7 * nrow(train) / 10)
train.T = train[-train.rows,]
train = train[train.rows,]

# Linear Saturated Model
model.Saturated = lm(SalePrice ~ ., data = train)
summary(model.Saturated)

library(olsrr)
# ols_step_all_possible(model.Saturated)

# Categorical Variables

model.MSSubClass = lm(SalePrice ~ MSSubClass, data = train)
summary(model.MSSubClass) # Adjusted R-squared:  0.2435

model.MSZoning = lm(SalePrice ~ MSZoning, data = train)
summary(model.MSZoning) # Adjusted R-squared:  0.1117

model.Street = lm(SalePrice ~ Street, data = train)
summary(model.Street) # Not Significant, p-value: 0.1714

model.Alley = lm(SalePrice ~ Alley, data = train)
summary(model.Alley) # Adjusted R-squared:  0.0211

model.LotShape = lm(SalePrice ~ LotShape, data = train)
summary(model.LotShape) # Adjusted R-squared:  0.08202


model.LandContour = lm(SalePrice ~ LandContour, data = train)
summary(model.LandContour) # Adjusted R-squared:  0.02677

model.Utilities = lm(SalePrice ~ Utilities, data = train)
summary(model.Utilities) # Not Significant, p-value: 0.5703

model.LotConfig = lm(SalePrice ~ LotConfig, data = train)
summary(model.LotConfig) # Adjusted R-squared:  0.01978

model.LandSlope = lm(SalePrice ~ LandSlope, data = train)
summary(model.LandSlope) # Not Significant, p-value: 0.2784

model.Neighborhood = lm(SalePrice ~ Neighborhood, data = train)
summary(model.Neighborhood) # Adjusted R-squared:  0.5239

model.Condition1 = lm(SalePrice ~ Condition1, data = train)
summary(model.Condition1) # Adjusted R-squared:  0.02503

model.Condition2 = lm(SalePrice ~ Condition2, data = train)
summary(model.Condition2) # Not Significant, p-value: 0.1893

model.BldgType = lm(SalePrice ~ BldgType, data = train)
summary(model.BldgType) # Adjusted R-squared:  0.02727

model.HouseStyle = lm(SalePrice ~ HouseStyle, data = train)
summary(model.HouseStyle) # Adjusted R-squared:  0.08002

model.OverallQual = lm(SalePrice ~ OverallQual, data = train)
summary(model.OverallQual) # Adjusted R-squared:  0.0.6575

model.OverallCond = lm(SalePrice ~ OverallCond, data = train)
summary(model.OverallCond) # Adjusted R-squared:  0.1241

model.RoofStyle = lm(SalePrice ~ RoofStyle, data = train)
summary(model.RoofStyle) # Adjusted R-squared:  0.04287

model.RoofMatl = lm(SalePrice ~ RoofMatl, data = train)
summary(model.RoofMatl) # Adjusted R-squared:  0.01191

model.Exterior1st = lm(SalePrice ~ Exterior1st, data = train)
summary(model.Exterior1st) # Adjusted R-squared:  0.1533

model.Exterior2nd = lm(SalePrice ~ Exterior2nd, data = train)
summary(model.Exterior2nd) # Adjusted R-squared:  0.1576

model.MasVnrType = lm(SalePrice ~ MasVnrType, data = train)
summary(model.MasVnrType) # Adjusted R-squared:  0.1899

model.ExterQual = lm(SalePrice ~ ExterQual, data = train)
summary(model.ExterQual) # Adjusted R-squared:  0.4419

model.ExterCond = lm(SalePrice ~ ExterCond, data = train)
summary(model.ExterCond) # Adjusted R-squared:  0.02995

model.Foundation = lm(SalePrice ~ Foundation, data = train)
summary(model.Foundation) # Adjusted R-squared:  0.2493

model.BsmtQual = lm(SalePrice ~ BsmtQual, data = train)
summary(model.BsmtQual) # Adjusted R-squared:  0.4452

model.BsmtCond = lm(SalePrice ~ BsmtCond, data = train)
summary(model.BsmtCond) # Adjusted R-squared:  0.05679

model.BsmtExposure = lm(SalePrice ~ BsmtExposure, data = train)
summary(model.BsmtExposure) # Adjusted R-squared:  0.1475

model.BsmtFinType1 = lm(SalePrice ~ BsmtFinType1, data = train)
summary(model.BsmtFinType1) # Adjusted R-squared:  0.1986

model.BsmtFinType2 = lm(SalePrice ~ BsmtFinType2, data = train)
summary(model.BsmtFinType2) # Adjusted R-squared:  0.02672

model.Heating = lm(SalePrice ~ Heating, data = train)
summary(model.Heating) # Adjusted R-squared:  0.006714

model.HeatingQC = lm(SalePrice ~ HeatingQC, data = train)
summary(model.HeatingQC) # Adjusted R-squared:  0.2004

model.CentralAir = lm(SalePrice ~ CentralAir, data = train)
summary(model.CentralAir) # Adjusted R-squared:  0.06492

model.Electrical = lm(SalePrice ~ Electrical, data = train)
summary(model.Electrical) # Adjusted R-squared:  0.06158

model.KitchenQual = lm(SalePrice ~ KitchenQual, data = train)
summary(model.KitchenQual) # Adjusted R-squared:  0.4557

model.Functional = lm(SalePrice ~ Functional, data = train)
summary(model.Functional) # Adjusted R-squared:  0.01017

model.FireplaceQu = lm(SalePrice ~ FireplaceQu, data = train)
summary(model.FireplaceQu) # Adjusted R-squared:  0.2777

model.GarageType = lm(SalePrice ~ GarageType, data = train)
summary(model.GarageType) # Adjusted R-squared:  0.2624

model.GarageFinish = lm(SalePrice ~ GarageFinish, data = train)
summary(model.GarageFinish) # Adjusted R-squared:  0.3043

model.GarageQual = lm(SalePrice ~ GarageQual, data = train)
summary(model.GarageQual) # Adjusted R-squared:  0.08611

model.GarageCond = lm(SalePrice ~ GarageCond, data = train)
summary(model.GarageCond) # Adjusted R-squared:  0.08641

model.PavedDrive = lm(SalePrice ~ PavedDrive, data = train)
summary(model.PavedDrive) # Adjusted R-squared:  0.0618

model.PoolQC = lm(SalePrice ~ PoolQC, data = train)
summary(model.PoolQC) # Adjusted R-squared:  0.02967

model.Fence = lm(SalePrice ~ Fence, data = train)
summary(model.Fence) # Adjusted R-squared:  0.02571

model.MiscFeature = lm(SalePrice ~ MiscFeature, data = train)
summary(model.MiscFeature) # Adjusted R-squared:  0.002986

model.SaleType = lm(SalePrice ~ SaleType, data = train)
summary(model.SaleType) # Adjusted R-squared:  0.1176

model.SaleCondition = lm(SalePrice ~ SaleCondition, data = train)
summary(model.SaleCondition) # Adjusted R-squared:  0.1118





# Numeric Variables


model.LotFrontage = lm(SalePrice ~ LotFrontage, data = train)
summary(model.LotFrontage) # Adjusted R-squared:  0.03865


model.LotArea = lm(SalePrice ~ LotArea, data = train)
summary(model.LotArea) # Adjusted R-squared:  0.06992


model.YearBuilt = lm(SalePrice ~ YearBuilt, data = train)
summary(model.YearBuilt) # Adjusted R-squared:  0.2783



model.YearRemodAdd = lm(SalePrice ~ YearRemodAdd, data = train)
summary(model.YearRemodAdd) # Adjusted R-squared:  0.2636



model.MasVnrArea = lm(SalePrice ~ MasVnrArea, data = train)
summary(model.MasVnrArea) # Adjusted R-squared: 0.175



model.BsmtFinSF1 = lm(SalePrice ~ BsmtFinSF1, data = train)
summary(model.BsmtFinSF1) # Adjusted R-squared:  0.1287


model.BsmtFinSF2 = lm(SalePrice ~ BsmtFinSF2, data = train)
summary(model.BsmtFinSF2) # Not Significant, p-value: 0.4206


model.BsmtUnfSF = lm(SalePrice ~ BsmtUnfSF, data = train)
summary(model.BsmtUnfSF) # Adjusted R-squared:  0.04295


model.TotalBsmtSF = lm(SalePrice ~ TotalBsmtSF, data = train)
summary(model.TotalBsmtSF) # Adjusted R-squared:  0.3543


model.X1stFlrSF = lm(SalePrice ~ X1stFlrSF, data = train)
summary(model.X1stFlrSF) # Adjusted R-squared:  0.3458



model.X2ndFlrSF = lm(SalePrice ~ X2ndFlrSF, data = train)
summary(model.X2ndFlrSF) # Adjusted R-squared:  0.1008



model.LowQualFinSF = lm(SalePrice ~ LowQualFinSF, data = train)
summary(model.LowQualFinSF) # Not Significant, p-value: 0.3858



model.GrLivArea = lm(SalePrice ~ GrLivArea, data = train)
summary(model.GrLivArea) # Adjusted R-squared:  0.4824



model.BsmtFullBath = lm(SalePrice ~ BsmtFullBath, data = train)
summary(model.BsmtFullBath) # Adjusted R-squared:  0.06099



model.BsmtHalfBath = lm(SalePrice ~ BsmtHalfBath, data = train)
summary(model.BsmtHalfBath) # Not Significant, 0.1661



model.FullBath = lm(SalePrice ~ FullBath, data = train)
summary(model.FullBath) # Adjusted R-squared:  0.3194



model.HalfBath = lm(SalePrice ~ HalfBath, data = train)
summary(model.HalfBath) # Adjusted R-squared:  0.08074


model.Bedroom = lm(SalePrice ~ BedroomAbvGr, data = train)
summary(model.Bedroom) # Adjusted R-squared:  0.0304


Kitchen
model.Kitchen = lm(SalePrice ~ KitchenAbvGr, data = train)
summary(model.Kitchen) # Adjusted R-squared:  0.01149


model.TotRmsAbvGrd = lm(SalePrice ~ TotRmsAbvGrd, data = train)
summary(model.TotRmsAbvGrd) # Adjusted R-squared:  0.2845



model.Fireplaces = lm(SalePrice ~ Fireplaces, data = train)
summary(model.Fireplaces) # Adjusted R-squared:  0.2144


model.GarageYrBlt = lm(SalePrice ~ GarageYrBlt, data = train)
summary(model.GarageYrBlt) # Adjusted R-squared:  0.2362


model.GarageCars = lm(SalePrice ~ GarageCars, data = train)
summary(model.GarageCars) # Adjusted R-squared:  0.4193


model.GarageArea = lm(SalePrice ~ GarageArea, data = train)
summary(model.GarageArea) # Adjusted R-squared:  0.3812


model.WoodDeckSF = lm(SalePrice ~ WoodDeckSF, data = train)
summary(model.WoodDeckSF) # Adjusted R-squared:  0.1046


model.OpenPorchSF = lm(SalePrice ~ OpenPorchSF, data = train)
summary(model.OpenPorchSF) # Adjusted R-squared:  0.09915


model.EnclosedPorch = lm(SalePrice ~ EnclosedPorch, data = train)
summary(model.EnclosedPorch) # Adjusted R-squared:  0.01069


model.X3SsnPorch = lm(SalePrice ~ X3SsnPorch, data = train)
summary(model.X3SsnPorch) # Not Significant, p-value: 0.1087



model.ScreenPorch = lm(SalePrice ~ ScreenPorch, data = train)
summary(model.ScreenPorch) # Adjusted R-squared: 0.00979



model.PoolArea = lm(SalePrice ~ PoolArea, data = train)
summary(model.PoolArea) # Adjusted R-squared: 0.01213


model.MoSold = lm(SalePrice ~ MoSold, data = train)
summary(model.MoSold) # Not Significant, p-value: 0.213


model.YrSold = lm(SalePrice ~ YrSold, data = train)
summary(model.YrSold) # Not Significant, p-value: 0.971


# Linear Model First


model.Model.First = lm(
  SalePrice ~ MSSubClass + MSZoning + Neighborhood + OverallQual +
    OverallCond + YearBuilt + YearRemodAdd + Exterior1st +
    Exterior2nd +
    MasVnrType + MasVnrArea + ExterQual + Foundation +
    BsmtQual +
    BsmtExposure + BsmtFinType1 + BsmtFinSF1 + TotalBsmtSF +
    HeatingQC +
    X1stFlrSF + X2ndFlrSF + GrLivArea + FullBath + KitchenQual +
    TotRmsAbvGrd + Fireplaces + FireplaceQu + GarageType +
    GarageYrBlt +
    GarageFinish + GarageCars + GarageArea + WoodDeckSF +
    SaleType +
    SaleCondition,
  data = train
)

summary(model.Model.First)
summary(model.Saturated)
anova(model.Model.First, model.Saturated)

library(dplyr)
library(ggplot2)
library(GGally)
library(psych)
library(car)
library(tidyr)


numeric.variables = train %>% select(
  .,
  YearBuilt,
  YearRemodAdd,
  MasVnrArea,
  BsmtFinSF1,
  TotalBsmtSF,
  X1stFlrSF,
  X2ndFlrSF,
  GrLivArea,
  FullBath,
  TotRmsAbvGrd,
  Fireplaces,
  GarageYrBlt,
  GarageCars,
  GarageArea ,
  WoodDeckSF
)

categorical.variables = train %>% dplyr::select(
  .,
  MSSubClass,
  MSZoning,
  Neighborhood,
  OverallQual,
  OverallCond,
  Exterior1st,
  Exterior2nd,
  MasVnrType,
  ExterQual,
  Foundation,
  BsmtQual,
  BsmtExposure,
  BsmtFinType1,
  HeatingQC,
  KitchenQual,
  FireplaceQu,
  GarageType,
  GarageFinish,
  SaleType,
  SaleCondition
)

cor(numeric.variables)
plot(numeric.variables)
pairs.panels(numeric.variables, color = "red")
ggpairs(numeric.variables)


# Selection of Varibales

forward_p = ols_step_forward_p(model.Model.First, penter = 0.05)
backward_p = ols_step_backward_p(model.Model.First, prem = 0.05)
forward_aic = ols_step_forward_aic(model.Model.First)
backward_aic = ols_step_backward_aic(model.Model.First)
both_aic = ols_step_both_aic(model.Model.First)
forward_p
backward_p
backward_aic
forward_aic
both_aic
plot(forward_aic)
plot(forward_p)

model.Model.P = lm(
  SalePrice ~ OverallQual + GrLivArea + Neighborhood + MSSubClass +
    BsmtExposure + KitchenQual + GarageCars + OverallCond +
    BsmtQual +
    BsmtFinType1 + Fireplaces + FullBath + GarageType +
    Exterior1st +
    Exterior2nd + ExterQual  ,
  data = train
)
summary(model.Model.P) # Multiple R-squared:  0.8784,	Adjusted R-squared:  0.8659
anova(model.Model.P, model.Model.First)

model.Model.AIC = lm(
  SalePrice ~ OverallQual + GrLivArea + Neighborhood + MSSubClass +
    BsmtExposure + KitchenQual + GarageCars + OverallCond +
    BsmtQual +
    BsmtFinType1 + Fireplaces + FullBath + GarageType +
    Exterior1st +
    ExterQual + WoodDeckSF + Exterior2nd + SaleCondition +
    GarageArea,
  data = train
)

summary(model.Model.AIC) # Multiple R-squared:  0.8809,	Adjusted R-squared:  0.8677
anova(model.Model.AIC, model.Model.First)

model.Model.P.Plus = lm(
  SalePrice ~ GrLivArea + GarageCars + YearBuilt + KitchenQual +
    BsmtQual + Fireplaces + WoodDeckSF + X2ndFlrSF,
  data = train
)
summary(model.Model.P.Plus) # Multiple R-squared:  0.776,	Adjusted R-squared:  0.7733
anova(model.Model.P.Plus, model.Model.P)

train.P.T = train.T %>% select(
  .,
  GrLivArea,
  GarageCars,
  YearBuilt,
  KitchenQual,
  BsmtQual,
  Fireplaces,
  WoodDeckSF,
  X2ndFlrSF
)


model.Model.AIC.Plus = lm(
  SalePrice ~ GrLivArea + KitchenQual +
    GarageCars + BsmtQual + Fireplaces + YearBuilt +
    WoodDeckSF + X2ndFlrSF + MSZoning +
    MasVnrArea,
  data = train
)
summary(model.Model.AIC.Plus) # Multiple R-squared:  0.7818,	Adjusted R-squared:  0.7781
anova(model.Model.AIC.Plus, model.Model.AIC)

train.AIC.T = train.T %>% select(
  .,
  GrLivArea,
  KitchenQual,
  GarageCars,
  BsmtQual,
  Fireplaces,
  YearBuilt,
  WoodDeckSF,
  X2ndFlrSF,
  MSZoning,
  MasVnrArea
)


plot(model.Model.P.Plus)
influencePlot(model.Model.P.Plus)
vif(model.Model.P.Plus)
hist(model.Model.P.Plus$residuals, breaks = 50)
predict.P.Plus = predict(model.Model.P.Plus, train.P.T)
cor(train.T$SalePrice, predict.P.Plus) # 0.9044039

plot(model.Model.AIC.Plus)
influencePlot(model.Model.AIC.Plus)
vif(model.Model.AIC.Plus)
hist(model.Model.AIC.Plus$residuals, breaks = 50)
predict.AIC.Plus = predict(model.Model.AIC.Plus,  train.AIC.T)
cor(train.T$SalePrice, predict.AIC.Plus) # 0.9076868

train[524,]
train[train$SalePrice == 184750,]
train[train$Id == 524,]
train[1183,]
train[train$Id == 1183,]
train[train$SalePrice == 745000,]
train[1299,]
train[train$SalePrice == 160000 & train$PoolArea == 480,]
train[train$Id == 1299,]

train = train %>% filter(., Id != 524)
train = train %>% filter(., Id != 1183)
train = train %>% filter(., Id != 1299)



model.Model.P.Plus.No.Outliers = lm(
  SalePrice ~ GrLivArea + GarageCars + YearBuilt + KitchenQual +
    BsmtQual + Fireplaces + WoodDeckSF +
    X2ndFlrSF,
  data = train
)

summary(model.Model.P.Plus.No.Outliers) # Multiple R-squared:  0.8284,	Adjusted R-squared:  0.8264

model.Model.AIC.Plus.No.Outliers = lm(
  SalePrice ~ GrLivArea + KitchenQual +
    GarageCars + BsmtQual + Fireplaces +
    YearBuilt +
    WoodDeckSF + X2ndFlrSF + MSZoning +
    MasVnrArea,
  data = train
)

summary(model.Model.AIC.Plus.No.Outliers) # Multiple R-squared:  0.835,	Adjusted R-squared:  0.8322

plot(model.Model.P.Plus.No.Outliers)
influencePlot(model.Model.P.Plus.No.Outliers)
vif(model.Model.P.Plus.No.Outliers)
hist(model.Model.P.Plus.No.Outliers$residuals, breaks = 50)
predict.P.Plus.No.Outliers = predict(model.Model.P.Plus.No.Outliers, train.T)
cor(train.T$SalePrice, predict.P.Plus.No.Outliers) # 0.9085721



plot(model.Model.AIC.Plus.No.Outliers)
influencePlot(model.Model.AIC.Plus.No.Outliers)
vif(model.Model.AIC.Plus.No.Outliers)
hist(model.Model.AIC.Plus.No.Outliers$residuals, breaks = 50)
predict.AIC.Plus.No.Outliers = predict(model.Model.AIC.Plus.No.Outliers,  train.T)
cor(train.T$SalePrice, predict.AIC.Plus.No.Outliers) # 0.9137888

test.data = test.data %>% select(
  .,
  GrLivArea,
  KitchenQual,
  GarageCars,
  BsmtQual,
  Fireplaces,
  YearBuilt,
  WoodDeckSF,
  X2ndFlrSF,
  MSZoning,
  MasVnrArea
)
colSums(is.na(test.data))
test.data$KitchenQual[is.na(test.data$KitchenQual)] = "TA"
test.data$GarageCars[is.na(test.data$GarageCars)] = 3
test.data$BsmtQual[is.na(test.data$BsmtQual)] = "TA"
test.data$MSZoning[is.na(test.data$MSZoning)] = "RM"
test.data$MasVnrArea[is.na(test.data$MasVnrArea)] = 700
sum(is.na(test.data))

predict.AIC.Plus.Final = predict(model.Model.AIC.Plus.No.Outliers,  test.data)
SalePrice = predict(model.Model.AIC.Plus.No.Outliers,  test.data)
Id = sample_sub$Id

sum(is.na(sample_sub))
final_submit = data.frame(Id, SalePrice)
cor(sample_sub$SalePrice, final_submit$SalePrice)

write.csv(final_submit, "final_submit_linear.csv", row.names = FALSE)
f = read.csv("final_submit_linear.csv", header = TRUE)
colnames(f)
cor(sample_sub$SalePrice, final_submit$SalePrice)
cor(sample_sub$SalePrice, f$SalePrice) # 0.20803
