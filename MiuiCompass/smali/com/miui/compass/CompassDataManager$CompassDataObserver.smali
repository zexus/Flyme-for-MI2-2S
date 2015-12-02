.class public interface abstract Lcom/miui/compass/CompassDataManager$CompassDataObserver;
.super Ljava/lang/Object;
.source "CompassDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/compass/CompassDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CompassDataObserver"
.end annotation


# virtual methods
.method public abstract notifyCompassDataChanged(Lcom/miui/compass/CompassDataManager$CompassData;)V
.end method

.method public abstract onCalibrateComplete(IZ)V
.end method

.method public abstract onCalibrateStart(Z)V
.end method
