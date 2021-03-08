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


library(olsrr)
library(dplyr)
library(ggplot2)
library(GGally)
library(psych)
library(car)
library(tidyr)
library(tree)
library(randomForest)



train.data.First.Selected = train %>% select(
  .,
  SalePrice,
  MSSubClass,
  MSZoning,
  Neighborhood,
  OverallQual,
  OverallCond,
  YearBuilt,
  YearRemodAdd,
  Exterior1st,
  Exterior2nd,
  MasVnrType,
  MasVnrArea,
  ExterQual,
  Foundation,
  BsmtQual,
  BsmtExposure,
  BsmtFinType1,
  BsmtFinSF1,
  TotalBsmtSF,
  HeatingQC,
  X1stFlrSF,
  X2ndFlrSF,
  GrLivArea,
  FullBath,
  KitchenQual,
  TotRmsAbvGrd,
  Fireplaces,
  FireplaceQu,
  GarageType,
  GarageYrBlt,
  GarageFinish,
  GarageCars,
  GarageArea,
  WoodDeckSF,
  SaleType,
  SaleCondition
)


test.data.First.Selected = train.T %>% select(
  .,
  SalePrice,
  MSSubClass,
  MSZoning,
  Neighborhood,
  OverallQual,
  OverallCond,
  YearBuilt,
  YearRemodAdd,
  Exterior1st,
  Exterior2nd,
  MasVnrType,
  MasVnrArea,
  ExterQual,
  Foundation,
  BsmtQual,
  BsmtExposure,
  BsmtFinType1,
  BsmtFinSF1,
  TotalBsmtSF,
  HeatingQC,
  X1stFlrSF,
  X2ndFlrSF,
  GrLivArea,
  FullBath,
  KitchenQual,
  TotRmsAbvGrd,
  Fireplaces,
  FireplaceQu,
  GarageType,
  GarageYrBlt,
  GarageFinish,
  GarageCars,
  GarageArea,
  WoodDeckSF,
  SaleType,
  SaleCondition
)




tree.data.First.Selected = tree(SalePrice ~ ., train.data.First.Selected)
summary(tree.data.First.Selected)
plot(tree.data.First.Selected)
text(tree.data.First.Selected)

set.seed(0)
cv.tree.data.First.Selected = cv.tree(tree.data.First.Selected)
par(mfrow = c(1, 2))
plot(
  cv.tree.data.First.Selected$size,
  cv.tree.data.First.Selected$dev,
  type = "b",
  xlab = "Terminal Nodes",
  ylab = "RSS"
)
plot(
  cv.tree.data.First.Selected$k,
  cv.tree.data.First.Selected$dev,
  type  = "b",
  xlab = "Alpha",
  ylab = "RSS"
)

#Pruning the tree to have 7 terminal nodes.
prune.tree.data.First.Selected.Seven = prune.tree(tree.data.First.Selected, best = 7)
par(mfrow = c(1, 1))
plot(prune.tree.data.First.Selected.Seven)
text(prune.tree.data.First.Selected.Seven, pretty = 0)




#Calculating and assessing the MSE of the test data on the overall tree.
tree.Predict = predict(tree.data.First.Selected, newdata = test.data.First.Selected)
test.value = test.data.First.Selected$SalePrice
plot(tree.Predict, test.value)
abline(0, 1)
cor(tree.Predict, test.value) # Correlation of 0.8773242


#Calculating and assessing the MSE of the test data on the pruned tree.
tree.Predict.Prune = predict(prune.tree.data.First.Selected.Seven, newdata = test.data.First.Selected)
plot(tree.Predict.Prune, test.value)
abline(0, 1)
cor(tree.Predict.Prune, test.value) # Correlation of 0.8309437



#Fitting an initial random forest to the training subset.
set.seed(0)
rf.train.data.First.Selected = randomForest(SalePrice ~ ., data = train.data.First.Selected, importance = TRUE)
rf.train.data.First.Selected


set.seed(0)
oob.err = numeric(35)
for (mtry in 1:35) {
  fit = randomForest(SalePrice ~ ., data = train.data.First.Selected, mtry = mtry)
  oob.err[mtry] = fit$mse[500]
  print(oob.err[mtry])
  cat("We're performing iteration", mtry, "\n")
}


#Visualizing the OOB error.
plot(
  1:35,
  oob.err,
  pch = 16,
  type = "b",
  xlab = "Variables Considered at Each Split",
  ylab = "OOB Mean Squared Error",
  main = "Random Forest OOB Error Rates\nby # of Variables"
)


min(oob.err)
which.min(oob.err)


fit.final.RF = randomForest(SalePrice ~ ., data = train.data.First.Selected, mtry = 9)
fit.final.RF
importance(fit.final.RF)
varImpPlot(fit.final.RF)
fit.RF.Nine = predict(fit.final.RF, newdata = test.data.First.Selected)
cor(fit.RF.Nine, test.value) # Correlation of 0.9497641

test.data.T = test.data %>% select(
  .,
  MSSubClass,
  MSZoning,
  Neighborhood,
  OverallQual,
  OverallCond,
  YearBuilt,
  YearRemodAdd,
  Exterior1st,
  Exterior2nd,
  MasVnrType,
  MasVnrArea,
  ExterQual,
  Foundation,
  BsmtQual,
  BsmtExposure,
  BsmtFinType1,
  BsmtFinSF1,
  TotalBsmtSF,
  HeatingQC,
  X1stFlrSF,
  X2ndFlrSF,
  GrLivArea,
  FullBath,
  KitchenQual,
  TotRmsAbvGrd,
  Fireplaces,
  FireplaceQu,
  GarageType,
  GarageYrBlt,
  GarageFinish,
  GarageCars,
  GarageArea,
  WoodDeckSF,
  SaleType,
  SaleCondition
)



class(test.data.T$MSSubClass)
sum(is.na(test.data.T$MSSubClass))

sum(is.na(test.data.T$MSZoning))
unique(test.data.T$MSZoning)
test.data.T$MSZoning[is.na(test.data.T$MSZoning)] = "RM"
test.data.T$MSZoning = as.factor(test.data.T$MSZoning)
class(test.data.T$MSZoning)
unique(test.data.T$MSZoning)
levels(test.data.T$MSZoning) = levels(train$MSZoning)

class(test.data.T$Neighborhood)
sum(is.na(test.data.T$Neighborhood))
test.data.T$Neighborhood = as.factor(test.data.T$Neighborhood)
unique(test.data.T$Neighborhood)
levels(test.data.T$Neighborhood) = levels(train$Neighborhood)

class(test.data.T$OverallQual)
sum(is.na(test.data.T$OverallQual))
test.data.T$OverallQual = as.factor(test.data.T$OverallQual)
unique(test.data.T$OverallQual)
levels(test.data.T$OverallQual) = levels(train$OverallQual)

class(test.data.T$OverallCond)
sum(is.na(test.data.T$OverallCond))
test.data.T$OverallCond = as.factor(test.data.T$OverallCond)
unique(test.data.T$OverallCond)
levels(test.data.T$OverallCond) = levels(train$OverallCond)

class(test.data.T$YearBuilt)
sum(is.na(test.data.T$YearBuilt))

class(test.data.T$YearRemodAdd)
sum(is.na(test.data.T$YearRemodAdd))

class(test.data.T$Exterior1st)
sum(is.na(test.data.T$Exterior1st))
table(test.data.T$Exterior1st)
test.data.T$Exterior1st[is.na(test.data.T$Exterior1st)] = "VinylSd"
test.data.T$Exterior1st = as.factor(test.data.T$Exterior1st)
unique(test.data.T$Exterior1st)
levels(test.data.T$Exterior1st) = levels(train$Exterior1st)

class(test.data.T$Exterior2nd)
sum(is.na(test.data.T$Exterior2nd))
table(test.data.T$Exterior2nd)
test.data.T$Exterior2nd[is.na(test.data.T$Exterior2nd)] = "VinylSd"
test.data.T$Exterior2nd = as.factor(test.data.T$Exterior2nd)
unique(test.data.T$Exterior2nd)
levels(test.data.T$Exterior2nd) = levels(train$Exterior2nd)

class(test.data.T$MasVnrType)
sum(is.na(test.data.T$MasVnrType))
table(test.data.T$MasVnrType)
test.data.T$MasVnrType[is.na(test.data.T$MasVnrType)] = "None"
test.data.T$MasVnrType = as.factor(test.data.T$MasVnrType)
unique(test.data.T$MasVnrType)
levels(test.data.T$MasVnrType) = levels(train$MasVnrType)

class(test.data.T$MasVnrArea)
sum(is.na(test.data.T$MasVnrArea))
test.data.T$MasVnrArea[is.na(test.data.T$MasVnrArea)] = 0

class(test.data.T$ExterQual)
sum(is.na(test.data.T$ExterQual))
test.data.T$ExterQual = as.factor(test.data.T$ExterQual)
unique(test.data.T$ExterQual)
levels(test.data.T$ExterQual) = levels(train$ExterQual)

class(test.data.T$Foundation)
sum(is.na(test.data.T$Foundation))
test.data.T$Foundation = as.factor(test.data.T$Foundation)
unique(test.data.T$Foundation)
levels(test.data.T$Foundation) = levels(train$Foundation)

class(test.data.T$BsmtQual)
sum(is.na(test.data.T$BsmtQual))
table(test.data.T$BsmtQual)
test.data.T$BsmtQual[is.na(test.data.T$BsmtQual)] = "TA"
test.data.T$BsmtQual = as.factor(test.data.T$BsmtQual)
unique(test.data.T$BsmtQual)
levels(test.data.T$BsmtQual) = levels(train$BsmtQual)

class(test.data.T$BsmtExposure)
sum(is.na(test.data.T$BsmtExposure))
table(test.data.T$BsmtExposure)
test.data.T$BsmtExposure[is.na(test.data.T$BsmtExposure)] = "No"
test.data.T$BsmtExposure = as.factor(test.data.T$BsmtExposure)
unique(test.data.T$BsmtExposure)
levels(test.data.T$BsmtExposure) = levels(train$BsmtExposure)

class(test.data.T$BsmtFinType1)
sum(is.na(test.data.T$BsmtFinType1))
table(test.data.T$BsmtFinType1)
test.data.T$BsmtFinType1[is.na(test.data.T$BsmtFinType1)] = "Unf"
test.data.T$BsmtFinType1 = as.factor(test.data.T$BsmtFinType1)
unique(test.data.T$BsmtFinType1)
levels(test.data.T$BsmtFinType1) = levels(train$BsmtFinType1)

class(test.data.T$BsmtFinSF1)
range(test.data.T$BsmtFinSF1[!is.na(test.data.T$BsmtFinSF1)]) #  0 4010
mean(test.data.T$BsmtFinSF1[!is.na(test.data.T$BsmtFinSF1)]) #  439.2037
median(test.data.T$BsmtFinSF1[!is.na(test.data.T$BsmtFinSF1)]) #  350.5
test.data.T$BsmtFinSF1[is.na(test.data.T$BsmtFinSF1)] = 400
sum(is.na(test.data.T$BsmtFinSF1))

class(test.data.T$TotalBsmtSF)
range(test.data.T$TotalBsmtSF[!is.na(test.data.T$TotalBsmtSF)]) #  0 5095
mean(test.data.T$TotalBsmtSF[!is.na(test.data.T$TotalBsmtSF)]) #  1046.118
median(test.data.T$TotalBsmtSF[!is.na(test.data.T$TotalBsmtSF)]) #  988
test.data.T$TotalBsmtSF[is.na(test.data.T$TotalBsmtSF)] = 1000
sum(is.na(test.data.T$TotalBsmtSF))

class(test.data.T$HeatingQC)
sum(is.na(test.data.T$HeatingQC))
test.data.T$HeatingQC = as.factor(test.data.T$HeatingQC)
unique(test.data.T$HeatingQC)
levels(test.data.T$HeatingQC) = levels(train$HeatingQC)

class(test.data.T$X1stFlrSF)
sum(is.na(test.data.T$X1stFlrSF))

class(test.data.T$X2ndFlrSF)
sum(is.na(test.data.T$X2ndFlrSF))

class(test.data.T$GrLivArea)
sum(is.na(test.data.T$GrLivArea))

class(test.data.T$FullBath)
sum(is.na(test.data.T$FullBath))

class(test.data.T$KitchenQual)
sum(is.na(test.data.T$KitchenQual))
table(test.data.T$KitchenQual)
test.data.T$KitchenQual[is.na(test.data.T$KitchenQual)] = "TA"
test.data.T$KitchenQual = as.factor(test.data.T$KitchenQual)
unique(test.data.T$KitchenQual)
levels(test.data.T$KitchenQual) = levels(train$KitchenQual)

class(test.data.T$TotRmsAbvGrd)
sum(is.na(test.data.T$TotRmsAbvGrd))

class(test.data.T$Fireplaces)
sum(is.na(test.data.T$Fireplaces))

class(test.data.T$FireplaceQu)
sum(is.na(test.data.T$FireplaceQu))
table(test.data.T$FireplaceQu)
test.data.T$FireplaceQu[is.na(test.data.T$FireplaceQu)] = "TA"
test.data.T$FireplaceQu = as.factor(test.data.T$FireplaceQu)
unique(test.data.T$FireplaceQu)
levels(test.data.T$FireplaceQu) = levels(train$FireplaceQu)

class(test.data.T$GarageType)
sum(is.na(test.data.T$GarageType))
table(test.data.T$GarageType)
test.data.T$GarageType[is.na(test.data.T$GarageType)] = "Detchd"
test.data.T$GarageType = as.factor(test.data.T$GarageType)
unique(test.data.T$GarageType)
levels(test.data.T$GarageType) = levels(train$GarageType)

class(test.data.T$GarageYrBlt)
mean(test.data.T$GarageYrBlt[!is.na(test.data.T$GarageYrBlt)]) # 1977.721
median(test.data.T$GarageYrBlt[!is.na(test.data.T$GarageYrBlt)]) # 1979
range(test.data.T$GarageYrBlt[!is.na(test.data.T$GarageYrBlt)]) # 1895 2207
quantile(test.data.T$GarageYrBlt[!is.na(test.data.T$GarageYrBlt)]) # 1895 1959 1979 2002 2207
test.data.T$GarageYrBlt[is.na(test.data.T$GarageYrBlt)] = 1980
sum(is.na(test.data.T$GarageYrBlt))

class(test.data.T$GarageFinish)
sum(is.na(test.data.T$GarageFinish))
table(test.data.T$GarageFinish)
test.data.T$GarageFinish[is.na(test.data.T$GarageFinish)] = "Unf"
test.data.T$GarageFinish = as.factor(test.data.T$GarageFinish)
unique(test.data.T$GarageFinish)
levels(test.data.T$GarageFinish) = levels(train$GarageFinish)

class(test.data.T$GarageCars)
table(test.data.T$GarageCars)
test.data.T$GarageCars[is.na(test.data.T$GarageCars)] = 2
sum(is.na(test.data.T$GarageCars))
unique(test.data.T$GarageCars)

class(test.data.T$GarageArea)
mean(test.data.T$GarageArea[!is.na(test.data.T$GarageArea)]) # 472.7689
median(test.data.T$GarageArea[!is.na(test.data.T$GarageArea)]) # 480
test.data.T$GarageArea[is.na(test.data.T$GarageArea)] = 475
sum(is.na(test.data.T$GarageArea))

class(test.data.T$WoodDeckSF)
sum(is.na(test.data.T$WoodDeckSF))

class(test.data.T$SaleType)
sum(is.na(test.data.T$SaleType))
table(test.data.T$SaleType)
test.data.T$SaleType[is.na(test.data.T$SaleType)] = "WD"
test.data.T$SaleType = as.factor(test.data.T$SaleType)
unique(test.data.T$SaleType)
levels(test.data.T$SaleType) = levels(train$SaleType)

class(test.data.T$SaleCondition)
sum(is.na(test.data.T$SaleCondition))
test.data.T$SaleCondition = as.factor(test.data.T$SaleCondition)
unique(test.data.T$SaleCondition)
levels(test.data.T$SaleCondition) = levels(train$SaleCondition)

sum(is.na(test.data.T))

predict.RF.final = predict(fit.final.RF, newdata = test.data.T)

SalePrice = predict(fit.final.RF, newdata = test.data.T)
Id = sample_sub$Id

sum(is.na(sample_sub))
final_submit_RF = data.frame(Id, SalePrice)
cor(sample_sub$SalePrice, final_submit_RF$SalePrice)

write.csv(final_submit_RF, "final_submit_RF.csv", row.names = FALSE)
f = read.csv("final_submit_RF.csv", header = TRUE)
colnames(f)
cor(sample_sub$SalePrice, final_submit_RF$SalePrice)
cor(sample_sub$SalePrice, f$SalePrice) # 0.16069

