.class Lcom/android/settings/fX;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field index:I

.field final synthetic vV:Lcom/android/settings/RadioInfo;

.field vY:[I


# direct methods
.method constructor <init>(Lcom/android/settings/RadioInfo;)V
    .locals 1

    .prologue
    .line 998
    iput-object p1, p0, Lcom/android/settings/fX;->vV:Lcom/android/settings/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 999
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/fX;->vY:[I

    .line 1000
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/fX;->index:I

    return-void

    .line 999
    nop

    :array_0
    .array-data 4
        0x7fffffff
        0x0
        0x3e8
    .end array-data
.end method


# virtual methods
.method public gv()I
    .locals 2

    .prologue
    .line 1003
    iget-object v0, p0, Lcom/android/settings/fX;->vY:[I

    iget v1, p0, Lcom/android/settings/fX;->index:I

    aget v0, v0, v1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 1008
    iget v0, p0, Lcom/android/settings/fX;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/fX;->index:I

    .line 1009
    iget v0, p0, Lcom/android/settings/fX;->index:I

    iget-object v1, p0, Lcom/android/settings/fX;->vY:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 1010
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/fX;->index:I

    .line 1012
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fX;->vV:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->n(Lcom/android/settings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fX;->vY:[I

    iget v2, p0, Lcom/android/settings/fX;->index:I

    aget v1, v1, v2

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->setCellInfoListRate(I)V

    .line 1013
    iget-object v0, p0, Lcom/android/settings/fX;->vV:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->C(Lcom/android/settings/RadioInfo;)V

    .line 1014
    return-void
.end method
