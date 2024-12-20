USE [master]
GO

/****** Object:  Database [bc]    Script Date: 20.12.2024 14:04:35 ******/
CREATE DATABASE [bc]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'bc_Data', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\bc.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'bc_Log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\bc.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [bc].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [bc] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [bc] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [bc] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [bc] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [bc] SET ARITHABORT OFF 
GO

ALTER DATABASE [bc] SET AUTO_CLOSE ON 
GO

ALTER DATABASE [bc] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [bc] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [bc] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [bc] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [bc] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [bc] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [bc] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [bc] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [bc] SET  ENABLE_BROKER 
GO

ALTER DATABASE [bc] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [bc] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [bc] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [bc] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [bc] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [bc] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [bc] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [bc] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [bc] SET  MULTI_USER 
GO

ALTER DATABASE [bc] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [bc] SET DB_CHAINING OFF 
GO

ALTER DATABASE [bc] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [bc] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [bc] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [bc] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO

ALTER DATABASE [bc] SET QUERY_STORE = ON
GO

ALTER DATABASE [bc] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO

ALTER DATABASE [bc] SET  READ_WRITE 
GO

