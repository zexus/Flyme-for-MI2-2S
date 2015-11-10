.class Lmiui/telephony/MccMncOverlayRes$ResEntry;
.super Ljava/lang/Object;
.source "MccMncOverlayRes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/telephony/MccMncOverlayRes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResEntry"
.end annotation


# instance fields
.field mccMnc:I

.field resId:I

.field final synthetic this$0:Lmiui/telephony/MccMncOverlayRes;

.field value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lmiui/telephony/MccMncOverlayRes;IILjava/lang/Object;)V
    .locals 0
    .param p2, "resId"    # I
    .param p3, "mccMnc"    # I
    .param p4, "value"    # Ljava/lang/Object;

    .prologue
    .line 41
    iput-object p1, p0, Lmiui/telephony/MccMncOverlayRes$ResEntry;->this$0:Lmiui/telephony/MccMncOverlayRes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput p2, p0, Lmiui/telephony/MccMncOverlayRes$ResEntry;->resId:I

    .line 43
    iput p3, p0, Lmiui/telephony/MccMncOverlayRes$ResEntry;->mccMnc:I

    .line 44
    iput-object p4, p0, Lmiui/telephony/MccMncOverlayRes$ResEntry;->value:Ljava/lang/Object;

    .line 45
    return-void
.end method
