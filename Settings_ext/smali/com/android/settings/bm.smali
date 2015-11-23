.class Lcom/android/settings/bm;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic gN:J

.field final synthetic gO:Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;J)V
    .locals 0

    .prologue
    .line 1912
    iput-object p1, p0, Lcom/android/settings/bm;->gO:Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;

    iput-wide p2, p0, Lcom/android/settings/bm;->gN:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 1915
    iget-object v0, p0, Lcom/android/settings/bm;->gO:Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;

    invoke-virtual {v0}, Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/DataUsageSummary;

    .line 1916
    if-eqz v0, :cond_0

    .line 1917
    iget-wide v2, p0, Lcom/android/settings/bm;->gN:J

    invoke-static {v0, v2, v3}, Lcom/android/settings/DataUsageSummary;->a(Lcom/android/settings/DataUsageSummary;J)V

    .line 1919
    :cond_0
    return-void
.end method
