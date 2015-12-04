.class public Lcom/miui/fmradio/StationItem;
.super Ljava/lang/Object;
.source "StationItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/fmradio/StationItem$StationitemDivider;
    }
.end annotation


# instance fields
.field frequency:I

.field label:Ljava/lang/String;

.field type:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "freq"    # I
    .param p2, "label"    # Ljava/lang/String;

    .prologue
    .line 13
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/fmradio/StationItem;-><init>(ILjava/lang/String;I)V

    .line 14
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0
    .param p1, "freq"    # I
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "type"    # I

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lcom/miui/fmradio/StationItem;->frequency:I

    .line 18
    iput-object p2, p0, Lcom/miui/fmradio/StationItem;->label:Ljava/lang/String;

    .line 19
    iput p3, p0, Lcom/miui/fmradio/StationItem;->type:I

    .line 20
    return-void
.end method
