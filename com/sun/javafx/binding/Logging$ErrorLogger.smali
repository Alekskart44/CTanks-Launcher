.class public Lcom/sun/javafx/binding/Logging$ErrorLogger;
.super Lcom/sun/javafx/logging/PlatformLogger;
.source "Logging.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/binding/Logging;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ErrorLogger"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/binding/Logging$ErrorLogger$ErrorLogRecord;
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/sun/javafx/binding/Logging$ErrorLogger;


# instance fields
.field private errorLogRecord:Lcom/sun/javafx/binding/Logging$ErrorLogger$ErrorLogRecord;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 45
    new-instance v0, Lcom/sun/javafx/binding/Logging$ErrorLogger;

    invoke-direct {v0}, Lcom/sun/javafx/binding/Logging$ErrorLogger;-><init>()V

    sput-object v0, Lcom/sun/javafx/binding/Logging$ErrorLogger;->INSTANCE:Lcom/sun/javafx/binding/Logging$ErrorLogger;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 42
    const-string v0, "javafx.beans"

    invoke-static {v0}, Ljava/lang/System;->getLogger(Ljava/lang/String;)Ljava/lang/System$Logger;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/javafx/logging/PlatformLogger;-><init>(Ljava/lang/System$Logger;)V

    .line 43
    return-void
.end method


# virtual methods
.method public fine(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    .line 98
    invoke-super {p0, p1, p2}, Lcom/sun/javafx/logging/PlatformLogger;->fine(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 99
    new-instance v0, Lcom/sun/javafx/binding/Logging$ErrorLogger$ErrorLogRecord;

    sget-object v1, Lcom/sun/javafx/logging/PlatformLogger$Level;->FINE:Lcom/sun/javafx/logging/PlatformLogger$Level;

    invoke-direct {v0, v1, p2}, Lcom/sun/javafx/binding/Logging$ErrorLogger$ErrorLogRecord;-><init>(Lcom/sun/javafx/logging/PlatformLogger$Level;Ljava/lang/Throwable;)V

    iput-object v0, p0, Lcom/sun/javafx/binding/Logging$ErrorLogger;->errorLogRecord:Lcom/sun/javafx/binding/Logging$ErrorLogger$ErrorLogRecord;

    .line 100
    return-void
.end method

.method public getErrorLogRecord()Lcom/sun/javafx/binding/Logging$ErrorLogger$ErrorLogRecord;
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/sun/javafx/binding/Logging$ErrorLogger;->errorLogRecord:Lcom/sun/javafx/binding/Logging$ErrorLogger$ErrorLogRecord;

    return-object v0
.end method

.method public setErrorLogRecord(Lcom/sun/javafx/binding/Logging$ErrorLogger$ErrorLogRecord;)V
    .registers 2

    .line 72
    iput-object p1, p0, Lcom/sun/javafx/binding/Logging$ErrorLogger;->errorLogRecord:Lcom/sun/javafx/binding/Logging$ErrorLogger$ErrorLogRecord;

    .line 73
    return-void
.end method

.method public warning(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    .line 86
    invoke-super {p0, p1, p2}, Lcom/sun/javafx/logging/PlatformLogger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    new-instance v0, Lcom/sun/javafx/binding/Logging$ErrorLogger$ErrorLogRecord;

    sget-object v1, Lcom/sun/javafx/logging/PlatformLogger$Level;->WARNING:Lcom/sun/javafx/logging/PlatformLogger$Level;

    invoke-direct {v0, v1, p2}, Lcom/sun/javafx/binding/Logging$ErrorLogger$ErrorLogRecord;-><init>(Lcom/sun/javafx/logging/PlatformLogger$Level;Ljava/lang/Throwable;)V

    iput-object v0, p0, Lcom/sun/javafx/binding/Logging$ErrorLogger;->errorLogRecord:Lcom/sun/javafx/binding/Logging$ErrorLogger$ErrorLogRecord;

    .line 88
    return-void
.end method
