.class public Lcom/sun/javafx/binding/Logging;
.super Ljava/lang/Object;
.source "Logging.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/binding/Logging$ErrorLogger;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLogger()Lcom/sun/javafx/binding/Logging$ErrorLogger;
    .registers 1

    .line 33
    sget-object v0, Lcom/sun/javafx/binding/Logging$ErrorLogger;->INSTANCE:Lcom/sun/javafx/binding/Logging$ErrorLogger;

    return-object v0
.end method
