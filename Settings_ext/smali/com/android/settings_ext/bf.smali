.class Lcom/android/settings_ext/bf;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic gH:Lcom/android/settings_ext/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/DataUsageSummary;)V
    .locals 0

    .prologue
    .line 1141
    iput-object p1, p0, Lcom/android/settings_ext/bf;->gH:Lcom/android/settings_ext/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1144
    iget-object v0, p0, Lcom/android/settings_ext/bf;->gH:Lcom/android/settings_ext/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings_ext/DataUsageSummary;->e(Lcom/android/settings_ext/DataUsageSummary;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1159
    :goto_0
    return-void

    .line 1146
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/bf;->gH:Lcom/android/settings_ext/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings_ext/DataUsageSummary;->f(Lcom/android/settings_ext/DataUsageSummary;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 1147
    :goto_1
    iget-object v3, p0, Lcom/android/settings_ext/bf;->gH:Lcom/android/settings_ext/DataUsageSummary;

    invoke-static {v3}, Lcom/android/settings_ext/DataUsageSummary;->g(Lcom/android/settings_ext/DataUsageSummary;)Ljava/lang/String;

    move-result-object v3

    .line 1148
    const-string v4, "mobile"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "SIM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1149
    :cond_1
    if-eqz v0, :cond_4

    .line 1150
    iget-object v0, p0, Lcom/android/settings_ext/bf;->gH:Lcom/android/settings_ext/DataUsageSummary;

    invoke-static {v0, v1}, Lcom/android/settings_ext/DataUsageSummary;->a(Lcom/android/settings_ext/DataUsageSummary;Z)V

    .line 1158
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/android/settings_ext/bf;->gH:Lcom/android/settings_ext/DataUsageSummary;

    invoke-static {v0, v2}, Lcom/android/settings_ext/DataUsageSummary;->b(Lcom/android/settings_ext/DataUsageSummary;Z)V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 1146
    goto :goto_1

    .line 1154
    :cond_4
    iget-object v0, p0, Lcom/android/settings_ext/bf;->gH:Lcom/android/settings_ext/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings_ext/DataUsageSummary$ConfirmDataDisableFragment;->y(Lcom/android/settings_ext/DataUsageSummary;)V

    goto :goto_2
.end method
