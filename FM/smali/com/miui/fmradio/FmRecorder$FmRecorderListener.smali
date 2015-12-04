.class public interface abstract Lcom/miui/fmradio/FmRecorder$FmRecorderListener;
.super Ljava/lang/Object;
.source "FmRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/fmradio/FmRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FmRecorderListener"
.end annotation


# virtual methods
.method public abstract onRecordError(II)V
.end method

.method public abstract onRecordStarted(Ljava/lang/String;)V
.end method

.method public abstract onRecordStoped(Ljava/lang/String;)V
.end method
