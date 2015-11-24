.class Lcom/android/settings_ext/d;
.super Ljava/lang/Object;
.source "AccessControlFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic g:Lcom/android/settings_ext/AccessControlFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/AccessControlFragment;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/settings_ext/d;->g:Lcom/android/settings_ext/AccessControlFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 97
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 98
    return-void
.end method
