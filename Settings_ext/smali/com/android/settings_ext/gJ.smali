.class Lcom/android/settings_ext/gJ;
.super Ljava/lang/Object;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# instance fields
.field final synthetic yD:Lcom/android/settings_ext/gX;

.field final synthetic yE:Lcom/android/settings_ext/TrustedCredentialsSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/TrustedCredentialsSettings;Lcom/android/settings_ext/gX;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcom/android/settings_ext/gJ;->yE:Lcom/android/settings_ext/TrustedCredentialsSettings;

    iput-object p2, p0, Lcom/android/settings_ext/gJ;->yD:Lcom/android/settings_ext/gX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/settings_ext/gJ;->yE:Lcom/android/settings_ext/TrustedCredentialsSettings;

    iget-object v1, p0, Lcom/android/settings_ext/gJ;->yD:Lcom/android/settings_ext/gX;

    invoke-virtual {v1, p3, p4}, Lcom/android/settings_ext/gX;->d(II)Lcom/android/settings_ext/gU;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings_ext/TrustedCredentialsSettings;->a(Lcom/android/settings_ext/TrustedCredentialsSettings;Lcom/android/settings_ext/gU;)V

    .line 218
    const/4 v0, 0x1

    return v0
.end method
