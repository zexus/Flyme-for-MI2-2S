.class Lcom/android/settings/fi;
.super Ljava/lang/Object;
.source "OwnerInfoSettings.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic tN:Lcom/android/settings/OwnerInfoSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/OwnerInfoSettings;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/settings/fi;->tN:Lcom/android/settings/OwnerInfoSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/settings/fi;->tN:Lcom/android/settings/OwnerInfoSettings;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/OwnerInfoSettings;->a(Lcom/android/settings/OwnerInfoSettings;Z)Z

    .line 139
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 131
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 135
    return-void
.end method
