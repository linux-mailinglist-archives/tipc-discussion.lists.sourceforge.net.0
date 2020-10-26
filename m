Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CB3EE298D1F
	for <lists+tipc-discussion@lfdr.de>; Mon, 26 Oct 2020 13:51:04 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kX1xc-0006Ib-4H; Mon, 26 Oct 2020 12:50:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Ying.Xue@windriver.com>) id 1kX1xa-0006IN-Ow
 for tipc-discussion@lists.sourceforge.net; Mon, 26 Oct 2020 12:50:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SjL7dLeMqaX+DmasVbEg4mDDA6YY4/9IDTnolXwC+0k=; b=NjJOknA+ZBIgG2Iey89xP5ENMA
 2FrkFuqc46eDkbAnrI8INzMcAtW1aFk91v9lSb6JGvISMx5REWdJfLFrS2Y74i6nMrOdhR2+c9L1G
 zCMnFkzDraEraNYqgWZ4v53Jy8v0dJicqBDEKYhAjqMJ+LMJ9OIVAcus+J8rhYZ6SOOA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=SjL7dLeMqaX+DmasVbEg4mDDA6YY4/9IDTnolXwC+0k=; b=d6OWoS3th0V177IH8pJyQxe2In
 2S6jtzNflxjCXo0t5mRkhV9OgEscq2yHQd1kz3Cf73wjX07e9UAMToRlpI1QQ75IFjgBi05KDe9N8
 8xXsL6XIMzODExDDWGdUzdnyrBvHGFeCcawViDwmY3IC7TG6WlWYGQedyEKyZQxOUTIE=;
Received: from mail-mw2nam12on2043.outbound.protection.outlook.com
 ([40.107.244.43] helo=NAM12-MW2-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kX1xI-007XOt-0m
 for tipc-discussion@lists.sourceforge.net; Mon, 26 Oct 2020 12:50:50 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DRBzp7NPrHoLDzB7W2F/QQSgwCVT0KiTOIKmjnfoXMf1XDtyP68lqMC7hj1cjLS0WW+DoSLBE3itv1/4nz7195dnwquXV4aZiBCrXT7MAkVR0dl374z0xgBxJxfaZa9Q/tk7tBcu7EySztabwUqK7V4WsU6BICkMG2RvwKHvvTZMrCB/8p+wfpmbGWZ73OyeVgEWXrPjc7agMP+7tOEdFlNnuuNHdWVCL9jByTO/At0YIjrLsRIegfImmlTV+0zXxINaofmrHm47EJqREw273FWYuAXy+HRC6vNDR1ei18+ILNeuBemeokyyIbgTBVztbripA32C6Db/J3a9/5qpdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SjL7dLeMqaX+DmasVbEg4mDDA6YY4/9IDTnolXwC+0k=;
 b=kkuI5TtkGnIMK0A4lkr87DwhmB9sc4+kBh9pxBINt3P/tgoeqpHnH9hbWGAiffCHLOow8tbjvj3KoJXxyCtYeiFX84CCv7EWl2dyeqbjvlXPPffWB4V1ziRakI/tmxkbTSWHAHNANfApyVr0guXv/0p7erszE9UdYPYCIOoK4MXmb++pbbMXZOm2H84rMY3GPfaE5AsxCGsX75xUiEc6Oll6yo6w4FzrdiaEVLPWRsOqakH9slvkMkT67cAqYDVHWP4UwfngJ3Rqj+skejq8cVuPsgoGBEPurQQqCj/wxCHEQiIJJ7QXK1KvPO8R11e8OzAI5Mx0NGlkfzg8r6C9AA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SjL7dLeMqaX+DmasVbEg4mDDA6YY4/9IDTnolXwC+0k=;
 b=drx73GNDQadSDc238E3Hn/vcHUOfnd9XGjAk3AyGUfhuj2Pak7w9StdfakvS+D6a8HGt7JGjwzwW3YX4eQoyGg9mUxMElo7Q+FvVwIwwKf3xcb5lvFdNPzaJXXkaZ9rNN0Berj+6CMaMhHPZsIUu8xbB1MyAMUrgwFWigLl8sRQ=
Received: from DM6PR11MB2603.namprd11.prod.outlook.com (2603:10b6:5:c6::21) by
 DM6PR11MB4595.namprd11.prod.outlook.com (2603:10b6:5:2ac::16) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3499.18; Mon, 26 Oct 2020 12:50:14 +0000
Received: from DM6PR11MB2603.namprd11.prod.outlook.com
 ([fe80::54f7:13ae:91ef:6ae4]) by DM6PR11MB2603.namprd11.prod.outlook.com
 ([fe80::54f7:13ae:91ef:6ae4%5]) with mapi id 15.20.3499.018; Mon, 26 Oct 2020
 12:50:14 +0000
From: "Xue, Ying" <Ying.Xue@windriver.com>
To: "jmaloy@redhat.com" <jmaloy@redhat.com>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: [net v2] tipc: add stricter control of reserved service types
Thread-Index: AQHWqjoasqfUNBm3K0yVCVpuU0OYd6mp1C/Q
Date: Mon, 26 Oct 2020 12:50:14 +0000
Message-ID: <DM6PR11MB2603E50E07124AB298753CE384190@DM6PR11MB2603.namprd11.prod.outlook.com>
References: <20201024191546.2640532-1-jmaloy@redhat.com>
In-Reply-To: <20201024191546.2640532-1-jmaloy@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=windriver.com;
x-originating-ip: [114.243.213.179]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d141e20c-5e73-4dc1-3427-08d879adaf32
x-ms-traffictypediagnostic: DM6PR11MB4595:
x-microsoft-antispam-prvs: <DM6PR11MB459571F996E640737600E74284190@DM6PR11MB4595.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: XcQAvuU00Uw7e0vFOV00L/tKvs44CL8iHaWxJBpqfnOiY7vSXnr5ytMQNcfJs6Rydf7OBxY4GHPrBy8iaPIbDIJXsBN6wlx8be0tt80v8Sx1DHnTm1xbz0RiXmJtZSg+XR8BcfKguCv5dBut+8zW/09o4MDIm+aO8dGBNnY5vuy0rJiNJvNGkgc2uIQRY6CbENkAmCNeQf2EbefYEWlU4j6xIhbakCcBaC6j0TTGlvNJ5YXKc3mo0RoeeQ6rH+/IN9/7sIsqoiM79bJLhd3JBoJc2J1+yafuDb22FWC+ax7EId+yptJeejnWza9V/TqPPI8/p8envHKkE9TTEk3ciJL+lOlJ4VwMAJrRnw/VIJ5grZ0p+4zrZhRQjlnO9A+t
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2603.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(346002)(39850400004)(366004)(136003)(376002)(66446008)(66556008)(66946007)(64756008)(66476007)(186003)(7696005)(8676002)(76116006)(52536014)(83380400001)(71200400001)(478600001)(4326008)(8936002)(5660300002)(26005)(55016002)(110136005)(86362001)(9686003)(316002)(6506007)(54906003)(33656002)(53546011)(2906002)(309714004);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: hnuxFaml2Kl8cOvswssYnyECd5WBIxHf990ekOd84vx2NtgOnUo9kNF3ag5mDzQwq6u6QBumzNCvB2KvAG3aXXJkL/uQMdUAb3BxvVqMqIsEiW18D7YfTftYuKcJ43r5YYlubjWg7dJk9w3OBhxaBuqhhiltcTw1rczvxg5DF/qE4eEEETZQS8ix83FkLADRH1MXQQMQgv9+y4/Xdz3iKRjXWvXjL8yHmK/K5V7v/xSIhmkaqsNkx/eTGrxRukFhc7aDSHhXKy4y9xmG3tmiSeKzopN48H1VJbxfh7ZE/HhV26LdnGHQqVfyKRXLmxmj07Cqc0f7CTggkbxHp7PYenKMF/2QMXSSLJuqfeUXyO5xAjDvLkN/bUnx/BrWHI6YFBWWu54/+AlKJzkN4ezo/lVukOLJhIYvX/Mirfz5JvtyGC1viuWMCD23Ch07oF21WLVB+dMjZRQV/abc1hdo+DO3yhNR3sTUXxdChgvZxFR1m8ZSJJe9z42MGKE7jtmEwHlZfDOvTXMAQRcu6b0w6/olYR5Js9qPlyqByKxLTl+K0ykeyX/NV0N7XIqLsJJKOq9NInTVMfkH+QVyfYyP8BsCEEJDeMFdKKuXefYAgaCOSwfb4yeMLnz8Y3eAeP6ypDMd+4+002B3QprZ5vWTlQ==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2603.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d141e20c-5e73-4dc1-3427-08d879adaf32
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Oct 2020 12:50:14.7681 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wXkW70MNrmyUfkttG6fYZfileXO/wht96JWWidWc4Q/flpMGLrXRGbmnfRg+vx4nPVPmImam06jIqsSebhvBdw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4595
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.244.43 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.244.43 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kX1xI-007XOt-0m
Subject: Re: [tipc-discussion] [net v2] tipc: add stricter control of
 reserved service types
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
Cc: "xinl@redhat.com" <xinl@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Hi Jon,

I have one idea about how to block the vulnerability described below from happening. Although it's not so elegant, it's quite simple:

As you mentioned below, TIPC_TOP_SRV service is only published in tipc_topsrv_create_listener () from kernel space. So probably we can change the code as below:

tipc_bind()
{
...
	if ((addr->addr.nameseq.type < TIPC_RESERVED_TYPES) {
		res = -EACCES;
		goto exit;
	}
	__tipc_bind();
...
}

Int __tipc_bind()
{
        If (addr->scope >= 0)                
	tipc_sk_publish(tsk, addr->scope, &addr->addr.nameseq) :
         else
                tipc_sk_withdraw(tsk, -addr->scope, &addr->addr.nameseq);
}

tipc_topsrv_create_listener()
{
...
- rc = kernel_bind(lsock, (struct sockaddr *)&saddr, sizeof(saddr));
+ rc = __tipc_bind(lsock, (struct sockaddr *)&saddr, sizeof(saddr));
...
}

Thanks,
Ying

-----Original Message-----
From: jmaloy@redhat.com <jmaloy@redhat.com> 
Sent: Sunday, October 25, 2020 3:16 AM
To: tipc-discussion@lists.sourceforge.net
Cc: tung.q.nguyen@dektech.com.au; hoang.h.le@dektech.com.au; tuong.t.lien@dektech.com.au; jmaloy@redhat.com; maloy@donjonn.com; xinl@redhat.com; Xue, Ying <Ying.Xue@windriver.com>; parthasarathy.bhuvaragan@gmail.com
Subject: [net v2] tipc: add stricter control of reserved service types

From: Jon Maloy <jmaloy@redhat.com>

TIPC reserves 64 service types for current and future internal use.
Therefore, the bind() function is meant to block regular user sockets from being bound to these values, while it should let through such bindings from internal users.

However, since we at the design moment saw no way to distinguish between regular and internal users the filter function ended up with allowing all bindings of the reserved types which were really in use ([0,1]), and block all the rest ([2,63]).

This is risky, since a regular user may bind to the service type representing the topology server (TIPC_TOP_SRV == 1) or the one used for indicating neigboring node status (TIPC_CFG_SRV == 0), and wreak havoc for users of those services, i.e., practically all users.

The reality is however that TIPC_CFG_SRV never is bound through the
bind() function, since it doesn't represent a regular socket, and TIPC_TOP_SRV can easily be singled out, since it is published from kernel mode and is the very first binding performed when the system is starting.

We now introduce a 'privileged' mode for sockets, marking which of those are entitled to bind to reserved service type values. The only such socket we have so far is the topology server's listener socket, which is identified the way described above. All other bindings to reserved service types are rejected.

It should be noted that, although this is a change of the API semantics, there is no risk we will break any currently working applications by doing this. Any application trying to bind to the values in question would be badly broken from the outset, so there is no chance we would find any such applications in real-world production systems.

Signed-off-by: Jon Maloy <jmaloy@redhat.com>
---
 net/tipc/socket.c | 17 ++++++++++++-----
 1 file changed, 12 insertions(+), 5 deletions(-)

diff --git a/net/tipc/socket.c b/net/tipc/socket.c index e795a8a2955b..a0a144ff84fd 100644
--- a/net/tipc/socket.c
+++ b/net/tipc/socket.c
@@ -1,7 +1,8 @@
 /*
  * net/tipc/socket.c: TIPC socket API
  *
- * Copyright (c) 2001-2007, 2012-2017, Ericsson AB
+ * Copyright (c) 2020, Red Hat Inc
+ * Copyright (c) 2001-2007, 2012-2019, Ericsson AB
  * Copyright (c) 2004-2008, 2010-2013, Wind River Systems
  * All rights reserved.
  *
@@ -127,6 +128,8 @@ struct tipc_sock {
 	bool expect_ack;
 	bool nodelay;
 	bool group_is_open;
+	bool privileged;
+	bool kernel;
 };
 
 static int tipc_sk_backlog_rcv(struct sock *sk, struct sk_buff *skb); @@ -479,6 +482,7 @@ static int tipc_sk_create(struct net *net, struct socket *sock,
 	tsk->max_pkt = MAX_PKT_DEFAULT;
 	tsk->maxnagle = 0;
 	tsk->nagle_start = NAGLE_START_INIT;
+	tsk->kernel = !!kern;
 	INIT_LIST_HEAD(&tsk->publications);
 	INIT_LIST_HEAD(&tsk->cong_links);
 	msg = &tsk->phdr;
@@ -665,6 +669,7 @@ static int tipc_bind(struct socket *sock, struct sockaddr *uaddr,
 	struct sockaddr_tipc *addr = (struct sockaddr_tipc *)uaddr;
 	struct tipc_sock *tsk = tipc_sk(sk);
 	int res = -EINVAL;
+	u32 stype, dnode;
 
 	lock_sock(sk);
 	if (unlikely(!uaddr_len)) {
@@ -691,13 +696,15 @@ static int tipc_bind(struct socket *sock, struct sockaddr *uaddr,
 		goto exit;
 	}
 
-	if ((addr->addr.nameseq.type < TIPC_RESERVED_TYPES) &&
-	    (addr->addr.nameseq.type != TIPC_TOP_SRV) &&
-	    (addr->addr.nameseq.type != TIPC_CFG_SRV)) {
+	stype = addr->addr.nameseq.type;
+	if (stype == TIPC_TOP_SRV && tsk->kernel &&
+	    !tipc_nametbl_translate(sock_net(sk), stype, stype, &dnode))
+		tsk->privileged = true;
+
+	if (stype < TIPC_RESERVED_TYPES && !tsk->privileged) {
 		res = -EACCES;
 		goto exit;
 	}
-
 	res = (addr->scope >= 0) ?
 		tipc_sk_publish(tsk, addr->scope, &addr->addr.nameseq) :
 		tipc_sk_withdraw(tsk, -addr->scope, &addr->addr.nameseq);
--
2.25.4



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
