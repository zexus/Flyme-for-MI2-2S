.class Lcom/android/settings_ext/wifi/e;
.super Ljava/lang/Object;
.source "MiuiAccessPoint.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field asO:Z

.field final synthetic asP:Lcom/android/settings_ext/wifi/d;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/wifi/d;)V
    .locals 1

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/settings_ext/wifi/e;->asP:Lcom/android/settings_ext/wifi/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ext/wifi/e;->asO:Z

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 180
    iget-object v0, p0, Lcom/android/settings_ext/wifi/e;->asP:Lcom/android/settings_ext/wifi/d;

    invoke-static {v0}, Lcom/android/settings_ext/wifi/d;->a(Lcom/android/settings_ext/wifi/d;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/wifi/e;->asP:Lcom/android/settings_ext/wifi/d;

    invoke-static {v0, v1}, Lcom/android/settings_ext/wifi/H;->b(Landroid/content/Context;Lcom/android/settings_ext/wifi/d;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 181
    if-nez v1, :cond_1

    .line 204
    :cond_0
    :goto_0
    return v4

    .line 184
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings_ext/wifi/e;->asO:Z

    if-nez v0, :cond_0

    .line 186
    iput-boolean v4, p0, Lcom/android/settings_ext/wifi/e;->asO:Z

    .line 187
    iget-object v0, p0, Lcom/android/settings_ext/wifi/e;->asP:Lcom/android/settings_ext/wifi/d;

    invoke-static {v0}, Lcom/android/settings_ext/wifi/d;->a(Lcom/android/settings_ext/wifi/d;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f04013c

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 188
    const v0, 0x7f100329

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 189
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 190
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings_ext/wifi/e;->asP:Lcom/android/settings_ext/wifi/d;

    invoke-static {v1}, Lcom/android/settings_ext/wifi/d;->a(Lcom/android/settings_ext/wifi/d;)Landroid/content/Context;

    move-result-object v1

    sget v3, Lmiui/R$style;->Theme_Light_Dialog_Alert:I

    invoke-direct {v0, v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f090cb9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090cbb

    invoke-virtual {v0, v1, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 196
    new-instance v1, Lcom/android/settings_ext/wifi/f;

    invoke-direct {v1, p0}, Lcom/android/settings_ext/wifi/f;-><init>(Lcom/android/settings_ext/wifi/e;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 202
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method
