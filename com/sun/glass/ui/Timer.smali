.class public abstract Lcom/sun/glass/ui/Timer;
.super Ljava/lang/Object;
.source "Timer.java"


# static fields
.field private static final SET_PERIOD:D = -2.0

.field private static final UNSET_PERIOD:D = -1.0


# instance fields
.field private period:D

.field private ptr:J

.field private final runnable:Ljava/lang/Runnable;


# direct methods
.method protected constructor <init>(Ljava/lang/Runnable;)V
    .registers 4

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-wide/high16 v0, -0x4010000000000000L  # -1.0

    iput-wide v0, p0, Lcom/sun/glass/ui/Timer;->period:D

    .line 61
    if-nez p1, :cond_11

    .line 62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "runnable shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_11
    iput-object p1, p0, Lcom/sun/glass/ui/Timer;->runnable:Ljava/lang/Runnable;

    .line 65
    return-void
.end method

.method public static getMaxPeriod()I
    .registers 1

    .line 78
    invoke-static {}, Lcom/sun/glass/ui/Application;->GetApplication()Lcom/sun/glass/ui/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/glass/ui/Application;->staticTimer_getMaxPeriod()I

    move-result v0

    return v0
.end method

.method public static getMinPeriod()I
    .registers 1

    .line 71
    invoke-static {}, Lcom/sun/glass/ui/Application;->GetApplication()Lcom/sun/glass/ui/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/glass/ui/Application;->staticTimer_getMinPeriod()I

    move-result v0

    return v0
.end method


# virtual methods
.method protected abstract _pause(J)V
.end method

.method protected abstract _resume(J)V
.end method

.method protected abstract _start(Ljava/lang/Runnable;)J
.end method

.method protected abstract _start(Ljava/lang/Runnable;I)J
.end method

.method protected abstract _stop(J)V
.end method

.method public declared-synchronized isRunning()Z
    .registers 5

    .line 163
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/sun/glass/ui/Timer;->period:D
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_e

    const-wide/high16 v2, -0x4010000000000000L  # -1.0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_a
    monitor-exit p0

    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_a

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pause()V
    .registers 5

    .line 142
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/sun/glass/ui/Timer;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    .line 143
    iget-wide v0, p0, Lcom/sun/glass/ui/Timer;->ptr:J

    invoke-virtual {p0, v0, v1}, Lcom/sun/glass/ui/Timer;->_pause(J)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 145
    :cond_e
    monitor-exit p0

    return-void

    .line 142
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resume()V
    .registers 5

    .line 152
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/sun/glass/ui/Timer;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    .line 153
    iget-wide v0, p0, Lcom/sun/glass/ui/Timer;->ptr:J

    invoke-virtual {p0, v0, v1}, Lcom/sun/glass/ui/Timer;->_resume(J)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 155
    :cond_e
    monitor-exit p0

    return-void

    .line 152
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized start()V
    .registers 5

    const-wide/16 v2, 0x0

    .line 112
    monitor-enter p0

    :try_start_3
    iget-wide v0, p0, Lcom/sun/glass/ui/Timer;->ptr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_c

    .line 113
    invoke-virtual {p0}, Lcom/sun/glass/ui/Timer;->stop()V

    .line 116
    :cond_c
    iget-object v0, p0, Lcom/sun/glass/ui/Timer;->runnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sun/glass/ui/Timer;->_start(Ljava/lang/Runnable;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sun/glass/ui/Timer;->ptr:J

    .line 117
    iget-wide v0, p0, Lcom/sun/glass/ui/Timer;->ptr:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_29

    .line 118
    const-wide/high16 v0, -0x4010000000000000L  # -1.0

    iput-wide v0, p0, Lcom/sun/glass/ui/Timer;->period:D

    .line 119
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to start the timer"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_26

    .line 112
    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0

    .line 121
    :cond_29
    const-wide/high16 v0, -0x4000000000000000L  # -2.0

    :try_start_2b
    iput-wide v0, p0, Lcom/sun/glass/ui/Timer;->period:D
    :try_end_2d
    .catchall {:try_start_2b .. :try_end_2d} :catchall_26

    .line 123
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized start(I)V
    .registers 6

    const-wide/16 v2, 0x0

    .line 88
    monitor-enter p0

    :try_start_3
    invoke-static {}, Lcom/sun/glass/ui/Timer;->getMinPeriod()I

    move-result v0

    if-lt p1, v0, :cond_f

    invoke-static {}, Lcom/sun/glass/ui/Timer;->getMaxPeriod()I

    move-result v0

    if-le p1, v0, :cond_1a

    .line 89
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "period is out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_17

    .line 88
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0

    .line 92
    :cond_1a
    :try_start_1a
    iget-wide v0, p0, Lcom/sun/glass/ui/Timer;->ptr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_23

    .line 93
    invoke-virtual {p0}, Lcom/sun/glass/ui/Timer;->stop()V

    .line 96
    :cond_23
    iget-object v0, p0, Lcom/sun/glass/ui/Timer;->runnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, p1}, Lcom/sun/glass/ui/Timer;->_start(Ljava/lang/Runnable;I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sun/glass/ui/Timer;->ptr:J

    .line 97
    iget-wide v0, p0, Lcom/sun/glass/ui/Timer;->ptr:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_3d

    .line 98
    const-wide/high16 v0, -0x4010000000000000L  # -1.0

    iput-wide v0, p0, Lcom/sun/glass/ui/Timer;->period:D

    .line 99
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to start the timer"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_3d
    int-to-double v0, p1

    iput-wide v0, p0, Lcom/sun/glass/ui/Timer;->period:D
    :try_end_40
    .catchall {:try_start_1a .. :try_end_40} :catchall_17

    .line 103
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized stop()V
    .registers 5

    const-wide/16 v2, 0x0

    .line 130
    monitor-enter p0

    :try_start_3
    iget-wide v0, p0, Lcom/sun/glass/ui/Timer;->ptr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_16

    .line 131
    iget-wide v0, p0, Lcom/sun/glass/ui/Timer;->ptr:J

    invoke-virtual {p0, v0, v1}, Lcom/sun/glass/ui/Timer;->_stop(J)V

    .line 132
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sun/glass/ui/Timer;->ptr:J

    .line 133
    const-wide/high16 v0, -0x4010000000000000L  # -1.0

    iput-wide v0, p0, Lcom/sun/glass/ui/Timer;->period:D
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_18

    .line 135
    :cond_16
    monitor-exit p0

    return-void

    .line 130
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method
