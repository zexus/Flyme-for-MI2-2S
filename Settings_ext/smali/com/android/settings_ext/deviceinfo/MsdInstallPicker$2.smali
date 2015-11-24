.class Lcom/android/settings_ext/deviceinfo/MsdInstallPicker$2;
.super Ljava/lang/Object;
.source "MsdInstallPicker.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic SK:Lcom/android/settings_ext/deviceinfo/MsdInstallPicker;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/deviceinfo/MsdInstallPicker;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/settings_ext/deviceinfo/MsdInstallPicker$2;->SK:Lcom/android/settings_ext/deviceinfo/MsdInstallPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 56
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/settings_ext/deviceinfo/MsdInstallPicker$2;->SK:Lcom/android/settings_ext/deviceinfo/MsdInstallPicker;

    invoke-static {v2}, Lcom/android/settings_ext/deviceinfo/MsdInstallPicker;->a(Lcom/android/settings_ext/deviceinfo/MsdInstallPicker;)Lcom/android/settings_ext/deviceinfo/MsdInstallPicker$MyAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings_ext/deviceinfo/MsdInstallPicker$MyAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 57
    iget-object v2, p0, Lcom/android/settings_ext/deviceinfo/MsdInstallPicker$2;->SK:Lcom/android/settings_ext/deviceinfo/MsdInstallPicker;

    invoke-static {v2}, Lcom/android/settings_ext/deviceinfo/MsdInstallPicker;->a(Lcom/android/settings_ext/deviceinfo/MsdInstallPicker;)Lcom/android/settings_ext/deviceinfo/MsdInstallPicker$MyAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/settings_ext/deviceinfo/MsdInstallPicker$MyAdapter;->bl(I)Lcom/android/settings_ext/deviceinfo/MsdInstallPicker$Holder;

    move-result-object v3

    if-ne v0, p3, :cond_0

    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, v3, Lcom/android/settings_ext/deviceinfo/MsdInstallPicker$Holder;->SL:Z

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    .line 57
    goto :goto_1

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/MsdInstallPicker$2;->SK:Lcom/android/settings_ext/deviceinfo/MsdInstallPicker;

    invoke-static {v0}, Lcom/android/settings_ext/deviceinfo/MsdInstallPicker;->a(Lcom/android/settings_ext/deviceinfo/MsdInstallPicker;)Lcom/android/settings_ext/deviceinfo/MsdInstallPicker$MyAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ext/deviceinfo/MsdInstallPicker$MyAdapter;->notifyDataSetChanged()V

    .line 60
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings_ext/deviceinfo/MsdInstallPicker$2;->SK:Lcom/android/settings_ext/deviceinfo/MsdInstallPicker;

    const-class v3, Lcom/android/settings_ext/deviceinfo/MsdInstallActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 61
    const-string v2, "install_system"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 62
    iget-object v2, p0, Lcom/android/settings_ext/deviceinfo/MsdInstallPicker$2;->SK:Lcom/android/settings_ext/deviceinfo/MsdInstallPicker;

    invoke-virtual {v2, v0, v1}, Lcom/android/settings_ext/deviceinfo/MsdInstallPicker;->startActivityForResult(Landroid/content/Intent;I)V

    .line 63
    return-void
.end method
