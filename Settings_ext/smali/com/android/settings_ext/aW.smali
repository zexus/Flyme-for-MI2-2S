.class Lcom/android/settings_ext/aW;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic gH:Lcom/android/settings_ext/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/DataUsageSummary;)V
    .locals 0

    .prologue
    .line 1206
    iput-object p1, p0, Lcom/android/settings_ext/aW;->gH:Lcom/android/settings_ext/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6

    .prologue
    .line 1209
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/br;

    .line 1210
    instance-of v1, v0, Lcom/android/settings_ext/bp;

    if-eqz v1, :cond_0

    .line 1213
    iget-object v0, p0, Lcom/android/settings_ext/aW;->gH:Lcom/android/settings_ext/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings_ext/DataUsageSummary$CycleEditorFragment;->y(Lcom/android/settings_ext/DataUsageSummary;)V

    .line 1216
    iget-object v0, p0, Lcom/android/settings_ext/aW;->gH:Lcom/android/settings_ext/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings_ext/DataUsageSummary;->k(Lcom/android/settings_ext/DataUsageSummary;)Landroid/widget/Spinner;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1230
    :goto_0
    return-void

    .line 1226
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ext/aW;->gH:Lcom/android/settings_ext/DataUsageSummary;

    invoke-static {v1}, Lcom/android/settings_ext/DataUsageSummary;->l(Lcom/android/settings_ext/DataUsageSummary;)Lcom/android/settings_ext/widget/ChartDataUsageView;

    move-result-object v1

    iget-wide v2, v0, Lcom/android/settings_ext/br;->start:J

    iget-wide v4, v0, Lcom/android/settings_ext/br;->gY:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/settings_ext/widget/ChartDataUsageView;->d(JJ)V

    .line 1228
    iget-object v0, p0, Lcom/android/settings_ext/aW;->gH:Lcom/android/settings_ext/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings_ext/DataUsageSummary;->m(Lcom/android/settings_ext/DataUsageSummary;)V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    .prologue
    .line 1235
    return-void
.end method