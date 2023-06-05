Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 57696722908
	for <lists+tipc-discussion@lfdr.de>; Mon,  5 Jun 2023 16:41:05 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1q6BOC-0002jy-9t;
	Mon, 05 Jun 2023 14:40:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <lucien.xin@gmail.com>) id 1q6BOB-0002jn-DL
 for tipc-discussion@lists.sourceforge.net;
 Mon, 05 Jun 2023 14:40:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=y+t8G4/22STWDr4DlWibh01N6l71AUExQgwBLIvfIqY=; b=LlLPiLvr6ZftpQY6eUixm8u5xp
 hF7De1d6A1OjFpCbQr6yiIEdd3mlTZTsF9oQegiLLBbwIJmNwXsEUxC7UIJp+XPmKCC1qdACfu3SI
 vK8y8hfxVudipFg96FQM5zvw/YJbt7e4wOOL+cGW0iFw3eMXSyUMZON8u9dlcyt0h4/c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=y+t8G4/22STWDr4DlWibh01N6l71AUExQgwBLIvfIqY=; b=m
 NhGEIblUbUN7T33kRoRPpZvaIjx+tUcCBX4h82VD4QiDE+jIozr6w3DYCrI4Ly2eE91i+cckFMft6
 9fShztdV8MJi00mmcZ4FkEiuzaxpfxzFNYnb5bkwrqwED3KYbdOSy9JKFtXbmRbZZp96Yts7lQvNb
 jodedF7ywDoHeNQg=;
Received: from mail-qk1-f172.google.com ([209.85.222.172])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1q6BO8-00BtaI-B3 for tipc-discussion@lists.sourceforge.net;
 Mon, 05 Jun 2023 14:40:55 +0000
Received: by mail-qk1-f172.google.com with SMTP id
 af79cd13be357-75ebb3d57d0so67922985a.3
 for <tipc-discussion@lists.sourceforge.net>;
 Mon, 05 Jun 2023 07:40:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1685976046; x=1688568046;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=y+t8G4/22STWDr4DlWibh01N6l71AUExQgwBLIvfIqY=;
 b=YZ11M3PCVVjiFaBi3snZyYkWtoYRP/dvzyXM5uUOMcMN3Y1tJlVlULcxN4n+fj8Zg+
 YreS0Xz7mzCdNUXGgp2qQcMnHdgqTX6gQgVpO3FVvQXlMSsrDjWOK9KYX+NlxJ1bnZsM
 H14YxwDLnPRTGLBNwfvnNttbGiRPVPWb4/Es9kak67ZBTsuwpMzI1h8F3JE8F6KFiZ8d
 otw/KLrjW0xbfZ+53Mr2JnuwUKxn5q3ta9eSN8xxTPdzq+vi0MLYBKu6Nnc3kVqrPu7/
 Mk6+GRFQPkzQ3kjWCyLv22HmvIJAgDEtqxgasdroewfG/xKq0dkWoFJzyuauNoz2/6AZ
 4lsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1685976046; x=1688568046;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=y+t8G4/22STWDr4DlWibh01N6l71AUExQgwBLIvfIqY=;
 b=Zzi/JRz/5G7WyzZdb1ePIba/5nELM93jNABj8JxWBPE8j/RPH2c4jV5KwpVIARCsJa
 HZ3poK+dIRxxaV03zMsQxgcJfHfB3c8UIt1TTAHJADZAReNLKMai67orE7Sqena6xQFD
 KfDfy383JR1p7lr4lq9gZhAgMfu+FEG2NGgllaDnGxXZy2W/tDhEjNO8AzthjdupLYdb
 7BeA+E94TXQRXnrwQyKA8tQ16EjFtY3s4i1ruil34LQGzRzvL6b6/gsb3XQmEgtUCmvi
 l88hFRwp0PFzWy2W/zxBT0KgwbOjZFY2pZZTLhpelNYv6x2uR1suEsWjsFJkwqj0VQMV
 gJCA==
X-Gm-Message-State: AC+VfDx6MoRJI4tSnmBNgmSX4NojVAS69Kb1FO+40MnHeB7SK/DhxtKa
 pBRJ1d8puBC4ce4uk2/XXdc=
X-Google-Smtp-Source: ACHHUZ7ZXo5zkv5LuLtv3805gCSXFFvSC3ln0i3u4mhb45Zc3wA1m2zpp6054+uPtvOh5coNh3/97w==
X-Received: by 2002:a05:620a:25c7:b0:75b:23a0:d9b8 with SMTP id
 y7-20020a05620a25c700b0075b23a0d9b8mr23201170qko.14.1685976046395; 
 Mon, 05 Jun 2023 07:40:46 -0700 (PDT)
Received: from wsfd-netdev15.ntdv.lab.eng.bos.redhat.com
 (nat-pool-bos-t.redhat.com. [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id
 x24-20020a05620a14b800b0075cce14b51esm4229093qkj.42.2023.06.05.07.40.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 05 Jun 2023 07:40:45 -0700 (PDT)
From: Xin Long <lucien.xin@gmail.com>
To: network dev <netdev@vger.kernel.org>, tipc-discussion@lists.sourceforge.net
Date: Mon,  5 Jun 2023 10:40:44 -0400
Message-Id: <1072588a8691f970bda950c7e2834d1f2983f58e.1685976044.git.lucien.xin@gmail.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Replace these open-code bearer rcu_dereference access with
 bearer_get(), like other places in bearer.c. While at it, also use tipc_net()
 instead of net_generic(net, tipc_net_id) to get "tn" in bearer. [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [lucien.xin[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.172 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.172 listed in list.dnswl.org]
X-Headers-End: 1q6BO8-00BtaI-B3
Subject: [tipc-discussion] [PATCH net-next] tipc: replace open-code bearer
 rcu_dereference access in bearer.c
X-BeenThere: tipc-discussion@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <tipc-discussion.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/tipc-discussion>, 
 <mailto:tipc-discussion-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=tipc-discussion>
List-Post: <mailto:tipc-discussion@lists.sourceforge.net>
List-Help: <mailto:tipc-discussion-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/tipc-discussion>, 
 <mailto:tipc-discussion-request@lists.sourceforge.net?subject=subscribe>
Cc: Eric Dumazet <edumazet@google.com>, kuba@kernel.org,
 Paolo Abeni <pabeni@redhat.com>, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Replace these open-code bearer rcu_dereference access with bearer_get(),
like other places in bearer.c. While at it, also use tipc_net() instead
of net_generic(net, tipc_net_id) to get "tn" in bearer.c.

Signed-off-by: Xin Long <lucien.xin@gmail.com>
---
 net/tipc/bearer.c | 14 ++++++--------
 1 file changed, 6 insertions(+), 8 deletions(-)

diff --git a/net/tipc/bearer.c b/net/tipc/bearer.c
index 114140c49108..1d5d3677bdaf 100644
--- a/net/tipc/bearer.c
+++ b/net/tipc/bearer.c
@@ -176,7 +176,7 @@ static int bearer_name_validate(const char *name,
  */
 struct tipc_bearer *tipc_bearer_find(struct net *net, const char *name)
 {
-	struct tipc_net *tn = net_generic(net, tipc_net_id);
+	struct tipc_net *tn = tipc_net(net);
 	struct tipc_bearer *b;
 	u32 i;
 
@@ -211,11 +211,10 @@ int tipc_bearer_get_name(struct net *net, char *name, u32 bearer_id)
 
 void tipc_bearer_add_dest(struct net *net, u32 bearer_id, u32 dest)
 {
-	struct tipc_net *tn = net_generic(net, tipc_net_id);
 	struct tipc_bearer *b;
 
 	rcu_read_lock();
-	b = rcu_dereference(tn->bearer_list[bearer_id]);
+	b = bearer_get(net, bearer_id);
 	if (b)
 		tipc_disc_add_dest(b->disc);
 	rcu_read_unlock();
@@ -223,11 +222,10 @@ void tipc_bearer_add_dest(struct net *net, u32 bearer_id, u32 dest)
 
 void tipc_bearer_remove_dest(struct net *net, u32 bearer_id, u32 dest)
 {
-	struct tipc_net *tn = net_generic(net, tipc_net_id);
 	struct tipc_bearer *b;
 
 	rcu_read_lock();
-	b = rcu_dereference(tn->bearer_list[bearer_id]);
+	b = bearer_get(net, bearer_id);
 	if (b)
 		tipc_disc_remove_dest(b->disc);
 	rcu_read_unlock();
@@ -534,7 +532,7 @@ int tipc_bearer_mtu(struct net *net, u32 bearer_id)
 	struct tipc_bearer *b;
 
 	rcu_read_lock();
-	b = rcu_dereference(tipc_net(net)->bearer_list[bearer_id]);
+	b = bearer_get(net, bearer_id);
 	if (b)
 		mtu = b->mtu;
 	rcu_read_unlock();
@@ -745,7 +743,7 @@ void tipc_bearer_cleanup(void)
 
 void tipc_bearer_stop(struct net *net)
 {
-	struct tipc_net *tn = net_generic(net, tipc_net_id);
+	struct tipc_net *tn = tipc_net(net);
 	struct tipc_bearer *b;
 	u32 i;
 
@@ -881,7 +879,7 @@ int tipc_nl_bearer_dump(struct sk_buff *skb, struct netlink_callback *cb)
 	struct tipc_bearer *bearer;
 	struct tipc_nl_msg msg;
 	struct net *net = sock_net(skb->sk);
-	struct tipc_net *tn = net_generic(net, tipc_net_id);
+	struct tipc_net *tn = tipc_net(net);
 
 	if (i == MAX_BEARERS)
 		return 0;
-- 
2.39.1



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
