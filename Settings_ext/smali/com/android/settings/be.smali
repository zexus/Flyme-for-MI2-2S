.class Lcom/android/settings/be;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic gH:Lcom/android/settings/DataUsageSummary;

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Lcom/android/settings/DataUsageSummary;I)V
    .locals 0

    .prologue
    .line 901
    iput-object p1, p0, Lcom/android/settings/be;->gH:Lcom/android/settings/DataUsageSummary;

    iput p2, p0, Lcom/android/settings/be;->val$uid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 904
    iget-object v0, p0, Lcom/android/settings/be;->gH:Lcom/android/settings/DataUsageSummary;

    invoke-virtual {v0}, Lcom/android/settings/DataUsageSummary;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 911
    :goto_0
    return-void

    .line 909
    :cond_0
    iget-object v0, p0, Lcom/android/settings/be;->gH:Lcom/android/settings/DataUsageSummary;

    invoke-virtual {v0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/be;->gH:Lcom/android/settings/DataUsageSummary;

    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->d(Lcom/android/settings/DataUsageSummary;)Landroid/content/Intent;

    move-result-object v1

    new-instance v2, Landroid/os/UserHandle;

    iget v3, p0, Lcom/android/settings/be;->val$uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method
