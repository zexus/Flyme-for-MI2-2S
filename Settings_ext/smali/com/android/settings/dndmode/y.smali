.class Lcom/android/settings_ext/dndmode/y;
.super Ljava/lang/Object;
.source "VipCallSettingsFragment.java"

# interfaces
.implements Lcom/android/settings_ext/dndmode/C;


# instance fields
.field final synthetic Xs:Lcom/android/settings_ext/dndmode/u;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/dndmode/u;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lcom/android/settings_ext/dndmode/y;->Xs:Lcom/android/settings_ext/dndmode/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public s(J)V
    .locals 5

    .prologue
    .line 238
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 239
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings_ext/dndmode/y;->Xs:Lcom/android/settings_ext/dndmode/u;

    invoke-static {v2}, Lcom/android/settings_ext/dndmode/u;->a(Lcom/android/settings_ext/dndmode/u;)Lmiui/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f090a79

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090a7a

    new-instance v3, Lcom/android/settings_ext/dndmode/z;

    invoke-direct {v3, p0, v0}, Lcom/android/settings_ext/dndmode/z;-><init>(Lcom/android/settings_ext/dndmode/y;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 253
    return-void
.end method
