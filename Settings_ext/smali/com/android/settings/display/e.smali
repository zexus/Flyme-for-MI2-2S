.class Lcom/android/settings/display/e;
.super Ljava/lang/Object;
.source "FluencyModeListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic UC:Lcom/android/settings/display/FluencyModeListPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/display/FluencyModeListPreference;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/settings/display/e;->UC:Lcom/android/settings/display/FluencyModeListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 61
    if-ltz p2, :cond_0

    iget-object v0, p0, Lcom/android/settings/display/e;->UC:Lcom/android/settings/display/FluencyModeListPreference;

    invoke-static {v0}, Lcom/android/settings/display/FluencyModeListPreference;->a(Lcom/android/settings/display/FluencyModeListPreference;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-lt p2, v0, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/android/settings/display/e;->UC:Lcom/android/settings/display/FluencyModeListPreference;

    invoke-virtual {v0, p2}, Lcom/android/settings/display/FluencyModeListPreference;->setValueIndex(I)V

    .line 66
    iget-object v0, p0, Lcom/android/settings/display/e;->UC:Lcom/android/settings/display/FluencyModeListPreference;

    invoke-static {v0}, Lcom/android/settings/display/FluencyModeListPreference;->b(Lcom/android/settings/display/FluencyModeListPreference;)I

    move-result v0

    if-eq p2, v0, :cond_2

    .line 67
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/display/e;->UC:Lcom/android/settings/display/FluencyModeListPreference;

    invoke-virtual {v1}, Lcom/android/settings/display/FluencyModeListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/settings/display/e;->UC:Lcom/android/settings/display/FluencyModeListPreference;

    invoke-static {v1}, Lcom/android/settings/display/FluencyModeListPreference;->a(Lcom/android/settings/display/FluencyModeListPreference;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/display/e;->UC:Lcom/android/settings/display/FluencyModeListPreference;

    invoke-static {v1}, Lcom/android/settings/display/FluencyModeListPreference;->c(Lcom/android/settings/display/FluencyModeListPreference;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090e0c

    new-instance v2, Lcom/android/settings/display/h;

    invoke-direct {v2, p0, p2}, Lcom/android/settings/display/h;-><init>(Lcom/android/settings/display/e;I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    new-instance v2, Lcom/android/settings/display/g;

    invoke-direct {v2, p0}, Lcom/android/settings/display/g;-><init>(Lcom/android/settings/display/e;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/display/f;

    invoke-direct {v1, p0}, Lcom/android/settings/display/f;-><init>(Lcom/android/settings/display/e;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 90
    :cond_2
    iget-object v0, p0, Lcom/android/settings/display/e;->UC:Lcom/android/settings/display/FluencyModeListPreference;

    invoke-virtual {v0}, Lcom/android/settings/display/FluencyModeListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    goto :goto_0
.end method
