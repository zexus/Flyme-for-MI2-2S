.class Lcom/android/settings_ext/DataUsageSummary$8;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ext/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ext/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/DataUsageSummary;)V
    .locals 0

    .prologue
    .line 1167
    iput-object p1, p0, Lcom/android/settings_ext/DataUsageSummary$8;->this$0:Lcom/android/settings_ext/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 1170
    iget-object v2, p0, Lcom/android/settings_ext/DataUsageSummary$8;->this$0:Lcom/android/settings_ext/DataUsageSummary;

    # getter for: Lcom/android/settings_ext/DataUsageSummary;->mAppRestrict:Landroid/widget/Switch;
    invoke-static {v2}, Lcom/android/settings_ext/DataUsageSummary;->access$1100(Lcom/android/settings_ext/DataUsageSummary;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 1172
    .local v0, "restrictBackground":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 1176
    iget-object v1, p0, Lcom/android/settings_ext/DataUsageSummary$8;->this$0:Lcom/android/settings_ext/DataUsageSummary;

    invoke-static {v1}, Lcom/android/settings_ext/DataUsageSummary$ConfirmAppRestrictFragment;->show(Lcom/android/settings_ext/DataUsageSummary;)V

    .line 1180
    :goto_1
    return-void

    .end local v0    # "restrictBackground":Z
    :cond_0
    move v0, v1

    .line 1170
    goto :goto_0

    .line 1178
    .restart local v0    # "restrictBackground":Z
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ext/DataUsageSummary$8;->this$0:Lcom/android/settings_ext/DataUsageSummary;

    # invokes: Lcom/android/settings_ext/DataUsageSummary;->setAppRestrictBackground(Z)V
    invoke-static {v2, v1}, Lcom/android/settings_ext/DataUsageSummary;->access$1200(Lcom/android/settings_ext/DataUsageSummary;Z)V

    goto :goto_1
.end method
