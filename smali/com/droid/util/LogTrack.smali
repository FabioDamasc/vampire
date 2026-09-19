.class public Lcom/droid/util/LogTrack;
.super Ljava/lang/Object;
.source "LogTrack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/droid/util/LogTrack$1;,
        Lcom/droid/util/LogTrack$LogLevel;,
        Lcom/droid/util/LogTrack$EnumEvent;
    }
.end annotation


# static fields
.field public static DEBUG:Z = false

.field public static final LOG_TAG:Ljava/lang/String; = "LogTrack"

.field private static final key_item:Ljava/lang/String; = "item"

.field private static final key_quantity:Ljava/lang/String; = "quantity"

.field private static final key_value:Ljava/lang/String; = "value"

.field private static logTrack:Lcom/droid/util/LogTrack;

.field public static logTrackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/droid/util/LogTrackImpl;",
            ">;"
        }
    .end annotation
.end field

.field private static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 14
    sget-boolean v0, Lcom/droid/util/config;->DEBUG:Z

    sput-boolean v0, Lcom/droid/util/LogTrack;->DEBUG:Z

    .line 25
    sput-object v1, Lcom/droid/util/LogTrack;->logTrack:Lcom/droid/util/LogTrack;

    .line 26
    sput-object v1, Lcom/droid/util/LogTrack;->mContext:Landroid/content/Context;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/droid/util/LogTrack;->logTrackList:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 14
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const-string v11, "logtrack"

    const-string v12, "xml"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 43
    .local v3, "id":I
    if-nez v3, :cond_0

    .line 44
    const-string v10, "init ERROR"

    const-string v11, "config.xml missing. Ignoring..."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v9

    .line 47
    .local v9, "xml":Landroid/content/res/XmlResourceParser;
    const/4 v2, -0x1

    .line 48
    .local v2, "eventType":I
    :goto_0
    const/4 v10, 0x1

    if-eq v2, v10, :cond_2

    .line 51
    const/4 v10, 0x2

    if-ne v2, v10, :cond_1

    .line 52
    :try_start_0
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 53
    .local v7, "strNode":Ljava/lang/String;
    const-string v10, "string"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 54
    const/4 v10, 0x0

    const-string v11, "name"

    invoke-interface {v9, v10, v11}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 55
    .local v5, "name":Ljava/lang/String;
    const/4 v10, 0x0

    const-string v11, "value"

    invoke-interface {v9, v10, v11}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 56
    .local v8, "value":Ljava/lang/String;
    const/4 v10, 0x0

    const-string v11, "params"

    invoke-interface {v9, v10, v11}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 57
    .local v6, "params":Ljava/lang/String;
    const-string v10, "logtrack"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 58
    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 60
    .local v0, "class1":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/droid/util/LogTrackImpl;>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/droid/util/LogTrackImpl;

    .line 61
    .local v4, "ltImpl":Lcom/droid/util/LogTrackImpl;
    sget-object v10, Lcom/droid/util/LogTrack;->logTrackList:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    invoke-interface {v4, v6}, Lcom/droid/util/LogTrackImpl;->initLogTrack(Ljava/lang/String;)V

    .line 66
    .end local v0    # "class1":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/droid/util/LogTrackImpl;>;"
    .end local v4    # "ltImpl":Lcom/droid/util/LogTrackImpl;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "params":Ljava/lang/String;
    .end local v7    # "strNode":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    :cond_1
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 67
    :catch_0
    move-exception v1

    .line 68
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 71
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    return-void
.end method

.method private static ToMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .param p0, "item"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "quantity"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 168
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    .line 169
    const-string v1, "item"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    :cond_0
    if-eqz p1, :cond_1

    .line 171
    const-string v1, "value"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    :cond_1
    if-eqz p2, :cond_2

    .line 173
    const-string v1, "quantity"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    :cond_2
    return-object v0
.end method

.method public static d(Ljava/lang/String;)V
    .locals 2
    .param p0, "params"    # Ljava/lang/String;

    .prologue
    .line 198
    sget-object v0, Lcom/droid/util/LogTrack$LogLevel;->d:Lcom/droid/util/LogTrack$LogLevel;

    const-string v1, ""

    invoke-static {v0, v1, p0}, Lcom/droid/util/LogTrack;->trackLog(Lcom/droid/util/LogTrack$LogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "params"    # Ljava/lang/String;

    .prologue
    .line 194
    sget-object v0, Lcom/droid/util/LogTrack$LogLevel;->d:Lcom/droid/util/LogTrack$LogLevel;

    invoke-static {v0, p0, p1}, Lcom/droid/util/LogTrack;->trackLog(Lcom/droid/util/LogTrack$LogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 2
    .param p0, "params"    # Ljava/lang/String;

    .prologue
    .line 214
    sget-object v0, Lcom/droid/util/LogTrack$LogLevel;->e:Lcom/droid/util/LogTrack$LogLevel;

    const-string v1, ""

    invoke-static {v0, v1, p0}, Lcom/droid/util/LogTrack;->trackLog(Lcom/droid/util/LogTrack$LogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "params"    # Ljava/lang/String;

    .prologue
    .line 210
    sget-object v0, Lcom/droid/util/LogTrack$LogLevel;->e:Lcom/droid/util/LogTrack$LogLevel;

    invoke-static {v0, p0, p1}, Lcom/droid/util/LogTrack;->trackLog(Lcom/droid/util/LogTrack$LogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/droid/util/LogTrack;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    sget-object v0, Lcom/droid/util/LogTrack;->logTrack:Lcom/droid/util/LogTrack;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/droid/util/LogTrack;

    invoke-direct {v0, p0}, Lcom/droid/util/LogTrack;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/droid/util/LogTrack;->logTrack:Lcom/droid/util/LogTrack;

    .line 34
    :cond_0
    if-eqz p0, :cond_1

    .line 35
    sput-object p0, Lcom/droid/util/LogTrack;->mContext:Landroid/content/Context;

    .line 37
    :cond_1
    sget-object v0, Lcom/droid/util/LogTrack;->logTrack:Lcom/droid/util/LogTrack;

    return-object v0
.end method

.method public static i(Ljava/lang/String;)V
    .locals 2
    .param p0, "params"    # Ljava/lang/String;

    .prologue
    .line 190
    sget-object v0, Lcom/droid/util/LogTrack$LogLevel;->i:Lcom/droid/util/LogTrack$LogLevel;

    const-string v1, ""

    invoke-static {v0, v1, p0}, Lcom/droid/util/LogTrack;->trackLog(Lcom/droid/util/LogTrack$LogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "params"    # Ljava/lang/String;

    .prologue
    .line 186
    sget-object v0, Lcom/droid/util/LogTrack$LogLevel;->i:Lcom/droid/util/LogTrack$LogLevel;

    invoke-static {v0, p0, p1}, Lcom/droid/util/LogTrack;->trackLog(Lcom/droid/util/LogTrack$LogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    return-void
.end method

.method public static onPause()V
    .locals 3

    .prologue
    .line 85
    sget-object v2, Lcom/droid/util/LogTrack;->logTrackList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/droid/util/LogTrackImpl;

    .line 86
    .local v1, "ltImpl":Lcom/droid/util/LogTrackImpl;
    invoke-interface {v1}, Lcom/droid/util/LogTrackImpl;->onPause()V

    goto :goto_0

    .line 87
    .end local v1    # "ltImpl":Lcom/droid/util/LogTrackImpl;
    :cond_0
    return-void
.end method

.method public static onResume()V
    .locals 3

    .prologue
    .line 80
    sget-object v2, Lcom/droid/util/LogTrack;->logTrackList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/droid/util/LogTrackImpl;

    .line 81
    .local v1, "ltImpl":Lcom/droid/util/LogTrackImpl;
    invoke-interface {v1}, Lcom/droid/util/LogTrackImpl;->onResume()V

    goto :goto_0

    .line 82
    .end local v1    # "ltImpl":Lcom/droid/util/LogTrackImpl;
    :cond_0
    return-void
.end method

.method public static onStart()V
    .locals 3

    .prologue
    .line 90
    sget-object v2, Lcom/droid/util/LogTrack;->logTrackList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/droid/util/LogTrackImpl;

    .line 91
    .local v1, "ltImpl":Lcom/droid/util/LogTrackImpl;
    invoke-interface {v1}, Lcom/droid/util/LogTrackImpl;->onStart()V

    goto :goto_0

    .line 92
    .end local v1    # "ltImpl":Lcom/droid/util/LogTrackImpl;
    :cond_0
    return-void
.end method

.method public static onStop()V
    .locals 3

    .prologue
    .line 95
    sget-object v2, Lcom/droid/util/LogTrack;->logTrackList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/droid/util/LogTrackImpl;

    .line 96
    .local v1, "ltImpl":Lcom/droid/util/LogTrackImpl;
    invoke-interface {v1}, Lcom/droid/util/LogTrackImpl;->onStop()V

    goto :goto_0

    .line 97
    .end local v1    # "ltImpl":Lcom/droid/util/LogTrackImpl;
    :cond_0
    return-void
.end method

.method public static startLogTrack()V
    .locals 3

    .prologue
    .line 74
    sget-object v2, Lcom/droid/util/LogTrack;->logTrackList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/droid/util/LogTrackImpl;

    .line 75
    .local v1, "ltImpl":Lcom/droid/util/LogTrackImpl;
    sget-object v2, Lcom/droid/util/LogTrack;->mContext:Landroid/content/Context;

    invoke-interface {v1, v2}, Lcom/droid/util/LogTrackImpl;->startLogTrack(Landroid/content/Context;)V

    goto :goto_0

    .line 77
    .end local v1    # "ltImpl":Lcom/droid/util/LogTrackImpl;
    :cond_0
    return-void
.end method

.method public static trackLocation()V
    .locals 0

    .prologue
    .line 119
    return-void
.end method

.method public static trackLog(Lcom/droid/util/LogTrack$LogLevel;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "lev"    # Lcom/droid/util/LogTrack$LogLevel;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 138
    if-nez p2, :cond_1

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    sget-object v2, Lcom/droid/util/LogTrack$1;->$SwitchMap$com$droid$util$LogTrack$LogLevel:[I

    invoke-virtual {p0}, Lcom/droid/util/LogTrack$LogLevel;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 147
    :pswitch_0
    sget-boolean v2, Lcom/droid/util/LogTrack;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 148
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_2
    sget-object v2, Lcom/droid/util/LogTrack;->logTrackList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/droid/util/LogTrackImpl;

    .line 150
    .local v1, "ltImpl":Lcom/droid/util/LogTrackImpl;
    sget-object v2, Lcom/droid/util/LogTrack$EnumEvent;->show:Lcom/droid/util/LogTrack$EnumEvent;

    invoke-static {p1, p2, v4}, Lcom/droid/util/LogTrack;->ToMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v1, v2, v3, v4}, Lcom/droid/util/LogTrackImpl;->trackAction(Lcom/droid/util/LogTrack$EnumEvent;Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_1

    .line 154
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "ltImpl":Lcom/droid/util/LogTrackImpl;
    :pswitch_1
    sget-boolean v2, Lcom/droid/util/LogTrack;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 155
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_3
    sget-object v2, Lcom/droid/util/LogTrack;->logTrackList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/droid/util/LogTrackImpl;

    .line 157
    .restart local v1    # "ltImpl":Lcom/droid/util/LogTrackImpl;
    sget-object v2, Lcom/droid/util/LogTrack$EnumEvent;->error:Lcom/droid/util/LogTrack$EnumEvent;

    invoke-static {p1, p2, v4}, Lcom/droid/util/LogTrack;->ToMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v1, v2, v3, v4}, Lcom/droid/util/LogTrackImpl;->trackAction(Lcom/droid/util/LogTrack$EnumEvent;Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_2

    .line 142
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static trackPay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "item"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "quantity"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 109
    sget-object v2, Lcom/droid/util/LogTrack;->logTrackList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/droid/util/LogTrackImpl;

    .line 110
    .local v1, "ltImpl":Lcom/droid/util/LogTrackImpl;
    sget-object v2, Lcom/droid/util/LogTrack$EnumEvent;->pay:Lcom/droid/util/LogTrack$EnumEvent;

    invoke-static {p0, p1, p2}, Lcom/droid/util/LogTrack;->ToMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v1, v2, v3, p3}, Lcom/droid/util/LogTrackImpl;->trackAction(Lcom/droid/util/LogTrack$EnumEvent;Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_0

    .line 111
    .end local v1    # "ltImpl":Lcom/droid/util/LogTrackImpl;
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 2
    .param p0, "params"    # Ljava/lang/String;

    .prologue
    .line 182
    sget-object v0, Lcom/droid/util/LogTrack$LogLevel;->v:Lcom/droid/util/LogTrack$LogLevel;

    const-string v1, ""

    invoke-static {v0, v1, p0}, Lcom/droid/util/LogTrack;->trackLog(Lcom/droid/util/LogTrack$LogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "params"    # Ljava/lang/String;

    .prologue
    .line 178
    sget-object v0, Lcom/droid/util/LogTrack$LogLevel;->v:Lcom/droid/util/LogTrack$LogLevel;

    invoke-static {v0, p0, p1}, Lcom/droid/util/LogTrack;->trackLog(Lcom/droid/util/LogTrack$LogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 2
    .param p0, "params"    # Ljava/lang/String;

    .prologue
    .line 206
    sget-object v0, Lcom/droid/util/LogTrack$LogLevel;->w:Lcom/droid/util/LogTrack$LogLevel;

    const-string v1, ""

    invoke-static {v0, v1, p0}, Lcom/droid/util/LogTrack;->trackLog(Lcom/droid/util/LogTrack$LogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "params"    # Ljava/lang/String;

    .prologue
    .line 202
    sget-object v0, Lcom/droid/util/LogTrack$LogLevel;->w:Lcom/droid/util/LogTrack$LogLevel;

    invoke-static {v0, p0, p1}, Lcom/droid/util/LogTrack;->trackLog(Lcom/droid/util/LogTrack$LogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    sput-object v0, Lcom/droid/util/LogTrack;->logTrack:Lcom/droid/util/LogTrack;

    .line 101
    return-void
.end method
