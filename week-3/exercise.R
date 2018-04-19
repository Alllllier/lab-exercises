iris_df <- data.frame(iris)

# Select all values of data frame for Sepal.length
<<<<<<< HEAD
iris_df$Sepal.Length

# Select only rows of Virginica flowers
iris_df[iris_df$Species == 'virginica', ]

# Select only the sepal legnth of the Virginica flowers
iris_df[iris_df$Species == 'virginica', ]$Sepal.Length

# Select rows where Petal.Length > 4.0
iris_df[iris_df$Petal.Length > 4.0, ]

# Add a column to the dataframe indicating whether Petal.Length > 4.0
iris_df$Long <- iris_df$Petal.Length > 4.0

# Find the species type of the flower that has the longest Sepal length
head(iris_df[order(iris_df$Sepal.Length, decreasing = T), 'Species'], 1)

# Select rows where species type is 'setosa' and Sepal.Width > 3.0
iris_df[iris_df$Species == 'setosa' & iris_df$Sepal.Width > 3.0, ]
=======

# Select only rows of Virginica flowers

# Select only the sepal legnth of the Virginica flowers

# Select rows where Petal.Length > 4.0

# Add a column to the dataframe indicating whether Petal.Length > 4.0

# Find the species type of the flower that has the longest Sepal length

# Select rows where species type is 'setosa' and Sepal.Width > 3.0
>>>>>>> fdf343fdf00eb05c41d97e95624160fdf32cf8ef
