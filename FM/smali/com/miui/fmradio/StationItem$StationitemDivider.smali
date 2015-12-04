.class public Lcom/miui/fmradio/StationItem$StationitemDivider;
.super Lcom/miui/fmradio/StationItem;
.source "StationItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/fmradio/StationItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StationitemDivider"
.end annotation


# direct methods
.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0
    .param p1, "freq"    # I
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "type"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/fmradio/StationItem;-><init>(ILjava/lang/String;I)V

    .line 29
    return-void
.end method
