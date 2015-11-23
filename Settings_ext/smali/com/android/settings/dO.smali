.class Lcom/android/settings_ext/dO;
.super Landroid/widget/ArrayAdapter;
.source "MiuiLocaleSettings.java"


# instance fields
.field final synthetic qj:Lcom/android/settings_ext/MiuiLocaleSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings_ext/MiuiLocaleSettings;Landroid/content/Context;IILjava/util/List;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/settings_ext/dO;->qj:Lcom/android/settings_ext/MiuiLocaleSettings;

    .line 140
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 141
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 145
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 146
    const v0, 0x7f10011d

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 147
    invoke-virtual {p0, p1}, Lcom/android/settings_ext/dO;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ext/dP;

    iget-object v1, v1, Lcom/android/settings_ext/dP;->qk:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings_ext/dO;->qj:Lcom/android/settings_ext/MiuiLocaleSettings;

    invoke-static {v3}, Lcom/android/settings_ext/MiuiLocaleSettings;->c(Lcom/android/settings_ext/MiuiLocaleSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 149
    return-object v2
.end method
