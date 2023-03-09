.class public Lcom/example/demo/App;
.super Ljava/lang/Object;
.source "App.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 1
    .param p0, "args"  # [Ljava/lang/String;

    .line 5
    invoke-static {p0}, Lcom/example/demo/Application;->main([Ljava/lang/String;)V

    .line 6
    return-void
.end method
