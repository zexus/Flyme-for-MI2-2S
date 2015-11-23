.class Lcom/android/settings/bh;
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
    .line 1176
    iput-object p1, p0, Lcom/android/settings/bh;->gH:Lcom/android/settings/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1179
    iget-object v0, p0, Lcom/android/settings/bh;->gH:Lcom/android/settings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->i(Lcom/android/settings/DataUsageSummary;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1181
    :goto_0
    if-eqz v0, :cond_1

    .line 1185
    iget-object v0, p0, Lcom/android/settings/bh;->gH:Lcom/android/settings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary$ConfirmAppRestrictFragment;->y(Lcom/android/settings/DataUsageSummary;)V

    .line 1189
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 1179
    goto :goto_0

    .line 1187
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bh;->gH:Lcom/android/settings/DataUsageSummary;

    invoke-static {v0, v1}, Lcom/android/settings/DataUsageSummary;->c(Lcom/android/settings/DataUsageSummary;Z)V

    goto :goto_1
.end method
