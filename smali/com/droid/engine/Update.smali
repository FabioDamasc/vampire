.class public Lcom/droid/engine/Update;
.super Ljava/lang/Object;
.source "Update.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/droid/engine/Update$UpdateCallback;
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field public static final LOG_TAG:Ljava/lang/String; = "Update"

.field public static updated:I


# instance fields
.field public mCallback:Lcom/droid/engine/Update$UpdateCallback;

.field private mContext:Landroid/content/Context;

.field private updateFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    sget-boolean v0, Lcom/droid/util/config;->DEBUG:Z

    sput-boolean v0, Lcom/droid/engine/Update;->DEBUG:Z

    .line 24
    const/4 v0, 0x0

    sput v0, Lcom/droid/engine/Update;->updated:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/droid/engine/Update$UpdateCallback;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/droid/engine/Update$UpdateCallback;

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object v1, p0, Lcom/droid/engine/Update;->mContext:Landroid/content/Context;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/droid/engine/Update;->updateFiles:Ljava/util/ArrayList;

    .line 28
    iput-object v1, p0, Lcom/droid/engine/Update;->mCallback:Lcom/droid/engine/Update$UpdateCallback;

    .line 36
    iput-object p1, p0, Lcom/droid/engine/Update;->mContext:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/droid/engine/Update;->mCallback:Lcom/droid/engine/Update$UpdateCallback;

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/droid/util/config;->ROOT_UPDATE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ver.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/droid/engine/Utils;->getLocalVersion(Ljava/lang/String;)V

    .line 39
    return-void
.end method


# virtual methods
.method public clearUpdateFiles()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/droid/engine/Update;->updateFiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 133
    return-void
.end method

.method public isClear(Ljava/lang/String;)Z
    .locals 11
    .param p1, "pathLocalVer"    # Ljava/lang/String;

    .prologue
    .line 73
    const/4 v7, 0x0

    .line 74
    .local v7, "needCopy":Z
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 75
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 76
    invoke-static {p1}, Lcom/droid/engine/Utils;->getLocalVersion(Ljava/lang/String;)V

    .line 77
    const/4 v0, 0x0

    .line 80
    .local v0, "apkVer":I
    :try_start_0
    iget-object v9, p0, Lcom/droid/engine/Update;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    const-string v10, "build/ver.dat"

    invoke-virtual {v9, v10}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    .line 81
    .local v6, "is":Ljava/io/InputStream;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 82
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    .line 83
    .local v3, "ch":I
    :goto_0
    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    move-result v3

    const/4 v9, -0x1

    if-eq v3, v9, :cond_1

    .line 84
    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 91
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "ch":I
    .end local v6    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v4

    .line 93
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 95
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_1
    sget v9, Lcom/droid/engine/DroidGame;->localVer:I

    if-le v0, v9, :cond_0

    .line 96
    const/4 v7, 0x1

    .line 100
    .end local v0    # "apkVer":I
    :cond_0
    :goto_2
    return v7

    .line 85
    .restart local v0    # "apkVer":I
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "ch":I
    .restart local v6    # "is":Ljava/io/InputStream;
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 86
    .local v2, "buff":[B
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 87
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 88
    new-instance v8, Ljava/lang/String;

    const-string v9, "UTF-8"

    invoke-direct {v8, v2, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 89
    .local v8, "result":Ljava/lang/String;
    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v8, v9, v10

    .line 90
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_1

    .line 98
    .end local v0    # "apkVer":I
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "buff":[B
    .end local v3    # "ch":I
    .end local v6    # "is":Ljava/io/InputStream;
    .end local v8    # "result":Ljava/lang/String;
    :cond_2
    const/4 v7, 0x1

    goto :goto_2
.end method

.method public update()Z
    .locals 4

    .prologue
    .line 47
    const/4 v0, 0x0

    .line 48
    .local v0, "updateResult":Z
    iget-object v1, p0, Lcom/droid/engine/Update;->mCallback:Lcom/droid/engine/Update$UpdateCallback;

    invoke-interface {v1}, Lcom/droid/engine/Update$UpdateCallback;->onUpdateStart()V

    .line 49
    iget-object v1, p0, Lcom/droid/engine/Update;->mCallback:Lcom/droid/engine/Update$UpdateCallback;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/droid/engine/Update$UpdateCallback;->onUpdate(I)V

    .line 50
    iget-object v1, p0, Lcom/droid/engine/Update;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/droid/engine/Utils;->compVersion(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/droid/engine/Update;->updateToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    iget-object v1, p0, Lcom/droid/engine/Update;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/droid/engine/Utils;->cutTempToBuild(Landroid/content/Context;)V

    .line 54
    iget-object v1, p0, Lcom/droid/engine/Update;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/droid/util/config;->ROOT_UPDATE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ver.dat"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/droid/engine/DroidGame;->serverVer:I

    invoke-static {v1, v2, v3}, Lcom/droid/engine/Utils;->updateVersionFile(Landroid/content/Context;Ljava/lang/String;I)V

    .line 55
    iget-object v1, p0, Lcom/droid/engine/Update;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/droid/engine/Utils;->updateJsInfomation(Landroid/content/Context;)V

    .line 56
    const/4 v0, 0x1

    .line 58
    :cond_0
    iget-object v1, p0, Lcom/droid/engine/Update;->mCallback:Lcom/droid/engine/Update$UpdateCallback;

    const/16 v2, 0x64

    invoke-interface {v1, v2}, Lcom/droid/engine/Update$UpdateCallback;->onUpdate(I)V

    .line 59
    iget-object v1, p0, Lcom/droid/engine/Update;->mCallback:Lcom/droid/engine/Update$UpdateCallback;

    invoke-interface {v1}, Lcom/droid/engine/Update$UpdateCallback;->onUpdateFinish()V

    .line 61
    return v0
.end method

.method public updateToNext()Z
    .locals 10

    .prologue
    .line 106
    const/4 v6, 0x0

    .line 107
    .local v6, "updateResult":Z
    iget-object v7, p0, Lcom/droid/engine/Update;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/droid/engine/Utils;->getMD5FileList(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v2

    .line 108
    .local v2, "fileList":Ljava/util/Map;, "Ljava/util/Map<Ljava/net/URL;Ljava/io/File;>;"
    const/4 v0, 0x0

    .line 109
    .local v0, "cur":I
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v4

    .line 110
    .local v4, "length":I
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 111
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/URL;Ljava/io/File;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/net/URL;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/io/File;

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lcom/droid/engine/Utils;->downloadFile(Ljava/net/URL;Ljava/io/File;Z)Z

    move-result v6

    .line 112
    if-eqz v6, :cond_1

    .line 113
    sget-boolean v7, Lcom/droid/engine/Update;->DEBUG:Z

    if-eqz v7, :cond_0

    .line 114
    const-string v8, "Update"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Success to update to Version , update file : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 121
    mul-int/lit8 v7, v0, 0x64

    div-int/2addr v7, v4

    if-nez v7, :cond_5

    const/4 v5, 0x1

    .line 122
    .local v5, "progress":I
    :goto_1
    iget-object v7, p0, Lcom/droid/engine/Update;->mCallback:Lcom/droid/engine/Update$UpdateCallback;

    invoke-interface {v7, v5}, Lcom/droid/engine/Update$UpdateCallback;->onUpdate(I)V

    goto :goto_0

    .line 117
    .end local v5    # "progress":I
    :cond_1
    const-string v7, "Update"

    const-string v8, "Fail to update to Version."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/URL;Ljava/io/File;>;"
    :cond_2
    if-eqz v6, :cond_3

    .line 125
    invoke-static {}, Lcom/droid/engine/Utils;->saveStage()V

    .line 127
    :cond_3
    if-nez v4, :cond_4

    const/4 v6, 0x1

    .line 128
    :cond_4
    return v6

    .line 121
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/URL;Ljava/io/File;>;"
    :cond_5
    mul-int/lit8 v7, v0, 0x64

    div-int v5, v7, v4

    goto :goto_1
.end method
