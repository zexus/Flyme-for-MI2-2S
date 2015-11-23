.class Lcom/android/settings/bg;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic gH:Lcom/android/settings/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/DataUsageSummary;)V
    .locals 0

    .prologue
    .line 1162
    iput-object p1, p0, Lcom/android/settings/bg;->gH:Lcom/android/settings/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 1165
    iget-object v0, p0, Lcom/android/settings/bg;->gH:Lcom/android/settings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->h(Lcom/android/settings/DataUsageSummary;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1166
    :goto_0
    if-eqz v0, :cond_1

    .line 1169
    iget-object v0, p0, Lcom/android/settings/bg;->gH:Lcom/android/settings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;->y(Lcom/android/settings/DataUsageSummary;)V

    .line 1173
    :goto_1
    return-void

    .line 1165
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1171
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bg;->gH:Lcom/android/settings/DataUsageSummary;

    const-wide/16 v2, -0x1

    invoke-static {v0, v2, v3}, Lcom/android/settings/DataUsageSummary;->a(Lcom/android/settings/DataUsageSummary;J)V

    goto :goto_1
.end method
