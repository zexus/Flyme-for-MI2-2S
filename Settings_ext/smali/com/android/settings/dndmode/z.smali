.class Lcom/android/settings_ext/dndmode/z;
.super Ljava/lang/Object;
.source "VipCallSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic Xu:Ljava/lang/String;

.field final synthetic Xv:Lcom/android/settings_ext/dndmode/y;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/dndmode/y;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lcom/android/settings_ext/dndmode/z;->Xv:Lcom/android/settings_ext/dndmode/y;

    iput-object p2, p0, Lcom/android/settings_ext/dndmode/z;->Xu:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 246
    iget-object v0, p0, Lcom/android/settings_ext/dndmode/z;->Xv:Lcom/android/settings_ext/dndmode/y;

    iget-object v0, v0, Lcom/android/settings_ext/dndmode/y;->Xs:Lcom/android/settings_ext/dndmode/u;

    invoke-static {v0}, Lcom/android/settings_ext/dndmode/u;->a(Lcom/android/settings_ext/dndmode/u;)Lmiui/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/settings_ext/dndmode/z;->Xu:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 251
    return-void
.end method
