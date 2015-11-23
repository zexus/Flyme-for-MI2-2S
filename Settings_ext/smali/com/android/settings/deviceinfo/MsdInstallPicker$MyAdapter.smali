.class Lcom/android/settings/deviceinfo/MsdInstallPicker$MyAdapter;
.super Landroid/widget/BaseAdapter;
.source "MsdInstallPicker.java"


# instance fields
.field final synthetic SK:Lcom/android/settings/deviceinfo/MsdInstallPicker;

.field private SM:Ljava/util/ArrayList;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/android/settings/deviceinfo/MsdInstallPicker;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/settings/deviceinfo/MsdInstallPicker$MyAdapter;->SK:Lcom/android/settings/deviceinfo/MsdInstallPicker;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 83
    iput-object p2, p0, Lcom/android/settings/deviceinfo/MsdInstallPicker$MyAdapter;->mContext:Landroid/content/Context;

    .line 84
    iput-object p3, p0, Lcom/android/settings/deviceinfo/MsdInstallPicker$MyAdapter;->SM:Ljava/util/ArrayList;

    .line 85
    return-void
.end method


# virtual methods
.method public bl(I)Lcom/android/settings/deviceinfo/MsdInstallPicker$Holder;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MsdInstallPicker$MyAdapter;->SM:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/MsdInstallPicker$Holder;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MsdInstallPicker$MyAdapter;->SM:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/MsdInstallPicker$MyAdapter;->bl(I)Lcom/android/settings/deviceinfo/MsdInstallPicker$Holder;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 99
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MsdInstallPicker$MyAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 106
    if-nez p2, :cond_1

    const v1, 0x7f04008b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 110
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/MsdInstallPicker$MyAdapter;->bl(I)Lcom/android/settings/deviceinfo/MsdInstallPicker$Holder;

    move-result-object v2

    .line 111
    if-eqz v2, :cond_0

    move-object v0, v1

    .line 112
    check-cast v0, Landroid/widget/RadioButton;

    iget-object v3, v2, Lcom/android/settings/deviceinfo/MsdInstallPicker$Holder;->mText:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    move-object v0, v1

    .line 113
    check-cast v0, Landroid/widget/RadioButton;

    iget-boolean v2, v2, Lcom/android/settings/deviceinfo/MsdInstallPicker$Holder;->SL:Z

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 116
    :cond_0
    return-object v1

    :cond_1
    move-object v1, p2

    .line 106
    goto :goto_0
.end method
