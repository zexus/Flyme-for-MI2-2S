.class Lcom/android/settings_ext/dl;
.super Ljava/lang/Object;
.source "MiuiAppPicker.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic ou:Lcom/android/settings_ext/MiuiAppPicker;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/MiuiAppPicker;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/settings_ext/dl;->ou:Lcom/android/settings_ext/MiuiAppPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings_ext/dl;->ou:Lcom/android/settings_ext/MiuiAppPicker;

    invoke-static {v0}, Lcom/android/settings_ext/MiuiAppPicker;->a(Lcom/android/settings_ext/MiuiAppPicker;)Lcom/android/settings_ext/do;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/settings_ext/do;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/dp;

    .line 47
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 48
    iget-object v2, v0, Lcom/android/settings_ext/dp;->bl:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_0

    iget-object v0, v0, Lcom/android/settings_ext/dp;->bl:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/dl;->ou:Lcom/android/settings_ext/MiuiAppPicker;

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/settings_ext/MiuiAppPicker;->setResult(ILandroid/content/Intent;)V

    .line 50
    iget-object v0, p0, Lcom/android/settings_ext/dl;->ou:Lcom/android/settings_ext/MiuiAppPicker;

    invoke-virtual {v0}, Lcom/android/settings_ext/MiuiAppPicker;->finish()V

    .line 51
    return-void
.end method
