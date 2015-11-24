.class Lcom/android/settings_ext/bi;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic gH:Lcom/android/settings_ext/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/DataUsageSummary;)V
    .locals 0

    .prologue
    .line 1192
    iput-object p1, p0, Lcom/android/settings_ext/bi;->gH:Lcom/android/settings_ext/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4

    .prologue
    .line 1195
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 1196
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/DataUsageSummary$AppItem;

    .line 1199
    iget-object v1, p0, Lcom/android/settings_ext/bi;->gH:Lcom/android/settings_ext/DataUsageSummary;

    invoke-static {v1}, Lcom/android/settings_ext/DataUsageSummary;->j(Lcom/android/settings_ext/DataUsageSummary;)Lcom/android/settings_ext/b/j;

    move-result-object v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 1203
    :cond_0
    :goto_0
    return-void

    .line 1201
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ext/bi;->gH:Lcom/android/settings_ext/DataUsageSummary;

    invoke-static {v1}, Lcom/android/settings_ext/DataUsageSummary;->j(Lcom/android/settings_ext/DataUsageSummary;)Lcom/android/settings_ext/b/j;

    move-result-object v1

    iget v2, v0, Lcom/android/settings_ext/DataUsageSummary$AppItem;->key:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/settings_ext/b/j;->g(IZ)Lcom/android/settings_ext/b/i;

    move-result-object v1

    .line 1202
    iget-object v2, p0, Lcom/android/settings_ext/bi;->gH:Lcom/android/settings_ext/DataUsageSummary;

    iget-object v1, v1, Lcom/android/settings_ext/b/i;->label:Ljava/lang/CharSequence;

    invoke-static {v2, v0, v1}, Lcom/android/settings_ext/DataUsageSummary$AppDetailsFragment;->a(Lcom/android/settings_ext/DataUsageSummary;Lcom/android/settings_ext/DataUsageSummary$AppItem;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
