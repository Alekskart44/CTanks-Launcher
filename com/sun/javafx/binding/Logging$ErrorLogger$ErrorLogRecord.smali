.class public Lcom/sun/javafx/binding/Logging$ErrorLogger$ErrorLogRecord;
.super Ljava/lang/Object;
.source "Logging.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/binding/Logging$ErrorLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ErrorLogRecord"
.end annotation


# instance fields
.field private final level:Lcom/sun/javafx/logging/PlatformLogger$Level;

.field private final thrown:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lcom/sun/javafx/logging/PlatformLogger$Level;Ljava/lang/Throwable;)V
    .registers 3

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/sun/javafx/binding/Logging$ErrorLogger$ErrorLogRecord;->level:Lcom/sun/javafx/logging/PlatformLogger$Level;

    .line 53
    iput-object p2, p0, Lcom/sun/javafx/binding/Logging$ErrorLogger$ErrorLogRecord;->thrown:Ljava/lang/Throwable;

    .line 54
    return-void
.end method


# virtual methods
.method public getLevel()Lcom/sun/javafx/logging/PlatformLogger$Level;
    .registers 2

    .line 61
    iget-object v0, p0, Lcom/sun/javafx/binding/Logging$ErrorLogger$ErrorLogRecord;->level:Lcom/sun/javafx/logging/PlatformLogger$Level;

    return-object v0
.end method

.method public getThrown()Ljava/lang/Throwable;
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/sun/javafx/binding/Logging$ErrorLogger$ErrorLogRecord;->thrown:Ljava/lang/Throwable;

    return-object v0
.end method
