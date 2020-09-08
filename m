Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F1BA9261523
	for <lists+tipc-discussion@lfdr.de>; Tue,  8 Sep 2020 18:45:01 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kFgjj-0000Ji-0p; Tue, 08 Sep 2020 16:44:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Ying.Xue@windriver.com>) id 1kFgjh-0000Ja-Ov
 for tipc-discussion@lists.sourceforge.net; Tue, 08 Sep 2020 16:44:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HVX6bUimkLvfmOk0T6u/5OLOiGaUOMkHEtw6/mXz2w8=; b=R+4qOZPK/9YC6lGWVN+WHl+XNF
 g3UBFQktGryRvGW3Ik9o9pNyeUyBHjfa4evfYw81/0VQInhMOZ5/cxqvd6gyZLpm1UuQiBkLa2NbC
 HzSp0uv6TlVRFypHEbDbYXWy9OBxoUuB9UrjOUFhVJ82U5/yvPup4lNvaDhro0QmMAuY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=HVX6bUimkLvfmOk0T6u/5OLOiGaUOMkHEtw6/mXz2w8=; b=WtBFwBE6rjrPcMmY1pWjfq0x61
 nu6InaRtSi3SnCXpc+fHf0HUJqXw2GNlbzs4Nok/N4AcWvEHsQinztZU/goTJ3U47ZfwAUSqWdQYX
 qYBo87TrSMUkD9hfTP6MPgIlvA66lBMeDgq4uqgqTp6hrBeSzuvwOjQbxIRtSm5ZRL98=;
Received: from mail-dm6nam11on2040.outbound.protection.outlook.com
 ([40.107.223.40] helo=NAM11-DM6-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kFgjY-00H9iN-AX
 for tipc-discussion@lists.sourceforge.net; Tue, 08 Sep 2020 16:44:49 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ogCpARAQDfKz/5C/JKY7LEgkDs6o6H4QYlUCAZQAp1E2TXAlMT546MZ+/sC6o1wwEkt1My3OekCBSHnp/3cSjNOWUqEL9q6wwj5qm2Os50EuENmRmD0vl+p6nJzwAb9EZn34NYpeyAHVR+fToBK/ly4RUssSdLnZL4SoYy7XMTnpapOdTEcCxmEPjnYS6NdAa4KfF/NOl3hVP99PeZ2YppVR1rRLzDvf88IMPlShY9VO7OBl6pPH6/qpuHRcgpdPa+fzubO+Gk+Xtmt7SDfRY8+7uIMR8M7Gufklg/BkxQeqLajfhbIj4agI7vBaga4eT3/9dgs+ls7p6pKgSH/YAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HVX6bUimkLvfmOk0T6u/5OLOiGaUOMkHEtw6/mXz2w8=;
 b=eBuUszqf9iU/fqn2hzPATtsR1L0k4pYs0RjInw96EUEp16jrciNZXH7rRIru4VY5gOnd51WHtg5SOm21/iH2Wubi5F2Lk2gfrvgnx4uNkvTnPZmviHxKoGQj3TSemR9zFwprDXyf2baF+J2whr9cVcG5uKiuYcDsg/NfcFIu2XHMErvbK0TrVQ7tQLzcMxZURIkNekpqninS4SmwG1IdVBJyuwvV179QZFZgaM3dGQcBAV3x7l6DwsfDVcODUVK/WSvSvhFnf97NT+CvFS5GbSzNOeEN6o+/LScKH8ptOzWX9ETggVrpjQGUgRFteAVALQLPkLV89QKKU5j3nmo5rA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HVX6bUimkLvfmOk0T6u/5OLOiGaUOMkHEtw6/mXz2w8=;
 b=S6NvPsG2/JLxHNTvXnoKPoBmq6zREKgZ5TOuqn0Xr3dx5V2KydeHiMjNMBSRL1NmZY+tEUChYJ9WxqJ9giwyZg4egUJYJ2tLCYYiRBDPS4JmJbJ2CmaH3vr+DMRwYb0vC7q9SxQ1XWeI6B51/+53qHh5OS2ZRGrp48WBSC2/C6M=
Received: from DM6PR11MB2603.namprd11.prod.outlook.com (2603:10b6:5:c6::21) by
 DM6PR11MB4692.namprd11.prod.outlook.com (2603:10b6:5:2aa::11) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3370.16; Tue, 8 Sep 2020 16:11:18 +0000
Received: from DM6PR11MB2603.namprd11.prod.outlook.com
 ([fe80::7c14:88f9:23cf:4da9]) by DM6PR11MB2603.namprd11.prod.outlook.com
 ([fe80::7c14:88f9:23cf:4da9%3]) with mapi id 15.20.3348.019; Tue, 8 Sep 2020
 16:11:18 +0000
From: "Xue, Ying" <Ying.Xue@windriver.com>
To: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>, Jon Maloy
 <jmaloy@redhat.com>, Parthasarathy Bhuvaragan
 <parthasarathy.bhuvaragan@gmail.com>
Thread-Topic: [PATCH] tipc: fix shutdown() of connection oriented socket
Thread-Index: AQHWg0vsMTuKJYeK/0G72GGXAhCdcqle7nXg
Date: Tue, 8 Sep 2020 16:11:17 +0000
Message-ID: <DM6PR11MB26039198B515CC1A0570617084290@DM6PR11MB2603.namprd11.prod.outlook.com>
References: <20200905061447.3463-1-penguin-kernel@I-love.SAKURA.ne.jp>
In-Reply-To: <20200905061447.3463-1-penguin-kernel@I-love.SAKURA.ne.jp>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: I-love.SAKURA.ne.jp; dkim=none (message not signed)
 header.d=none;I-love.SAKURA.ne.jp; dmarc=none action=none
 header.from=windriver.com;
x-originating-ip: [123.123.4.6]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 435948d2-752e-427e-5810-08d85411d1be
x-ms-traffictypediagnostic: DM6PR11MB4692:
x-microsoft-antispam-prvs: <DM6PR11MB4692A2EE5E7E1FC83FC7554384290@DM6PR11MB4692.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:34;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: JcepebVn/eOGm6jWRldQlJ5Ivg4cRO0P3srXT73MDUJn+ojN7xcwoc6TGi+4EEMxbVhdU3SEV/vCILX5TrUKftqIzpwEelb39GGjLqYEOuBNJw6FKuDloXafDuAF0N2DDuBZOTvS0IZt6+WVN8XoEkVWjP/fb1bMNgxtVuP2Ds3im+undI6MaYvj15vn5fljShqv9OLn9AnEZ+GyVmZ7K38jvOj6I/saOsfbPok9YP5FFSHFm/zPeWq6ZPD3El2QZ3Xgx+u6Yr9R2ldogptVmEQiJQPYqOBMrB7eol+9UWGZHITJ0SPJgO92UCwvN/zm9i/5bnUO1KsQ0uZRssf3dAFmGfIzGoKAizCHWs5ylzz7c8aWPj8cBtr8EGV7/PuM
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2603.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(376002)(39850400004)(346002)(396003)(366004)(110136005)(54906003)(83380400001)(52536014)(8676002)(5660300002)(316002)(8936002)(2906002)(26005)(53546011)(6506007)(7696005)(33656002)(66476007)(66446008)(64756008)(66556008)(71200400001)(66946007)(76116006)(186003)(9686003)(55016002)(478600001)(86362001)(4326008)(9126004);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: Apthl27Iw/UEU0b1bBtEPzBr1OwBuV9/1kmLt5Veep6IWoeLSDiMMxnlcxm5vyw7wtjUxBnw01Nl9IeAi4aejdggHNZ6PGfhskuPQm8b8b50olJ1IdtI72MWYu64GH6nbdG10F+14CUXTBos24D9cmtsFWPEzBjwGDErNFBe0R2ax+0AO4lZqkbXBlOSRclqjHYKzt8+crI3fTNxxreTu+KPRbLiOfM8qyvR7TGvHmnLM/nYAh15zzmyubF77W9JKVR3OrpxEDgfsK8rAM5AFy2n5kLrEdME6vsd4/2KZS0nV6MRDXyCX6/Pr3liPteJDuqjAwPz6GhBWRoccZ0xhHitce6zjYCqXKEIbnFIEPAALw7WLtwx/g/1WTSb1iNa/y8+dp9WidIAB2PGe2PbtWQF1RtJusGd77Er/vXZZ0bK/DqBlr/hriDFx3PRtgx0mUluk1yULXYLp5mIru9PDQ3O20nKSWPMbrg1RelnSYYWe29YrmHElwtaU5g5LmQsbHY6yKpJlhMx548xwISC+dSouBXsfuZTIgAft0jalJ32F0CfZ8WqPFcYNhxROxvHKctyxoBNheO3/UWAk3HFhHBrgkzCjV9bfU7oFfuWerQQgltwwrPsgT5vwRuknOZoGSJoXyJkq4Bdo2HIpqUuJw==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2603.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 435948d2-752e-427e-5810-08d85411d1be
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Sep 2020 16:11:18.2405 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jL99VTJTZfm93tVwhSu++pbUz2sgmAjNkcGDZ9cshL/8nv6BUomGaQ+6HKR1YPDjA4++tUqRkEHwFeLeubJWrw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4692
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.223.40 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.223.40 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kFgjY-00H9iN-AX
Subject: Re: [tipc-discussion] [PATCH] tipc: fix shutdown() of connection
 oriented socket
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
Cc: Jakub Kicinski <kuba@kernel.org>, "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>,
 "David S. Miller" <davem@davemloft.net>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

-----Original Message-----
From: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp> 
Sent: Saturday, September 5, 2020 2:15 PM
To: Jon Maloy <jmaloy@redhat.com>; Xue, Ying <Ying.Xue@windriver.com>; Parthasarathy Bhuvaragan <parthasarathy.bhuvaragan@gmail.com>
Cc: David S. Miller <davem@davemloft.net>; Jakub Kicinski <kuba@kernel.org>; netdev@vger.kernel.org; tipc-discussion@lists.sourceforge.net; Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
Subject: [PATCH] tipc: fix shutdown() of connection oriented socket

I confirmed that the problem fixed by commit 2a63866c8b51a3f7 ("tipc: fix
shutdown() of connectionless socket") also applies to stream socket.

----------
#include <sys/socket.h>
#include <unistd.h>
#include <sys/wait.h>

int main(int argc, char *argv[])
{
        int fds[2] = { -1, -1 };
        socketpair(PF_TIPC, SOCK_STREAM /* or SOCK_DGRAM */, 0, fds);
        if (fork() == 0)
                _exit(read(fds[0], NULL, 1));
        shutdown(fds[0], SHUT_RDWR); /* This must make read() return. */
        wait(NULL); /* To be woken up by _exit(). */
        return 0;
}
----------

Since shutdown(SHUT_RDWR) should affect all processes sharing that socket, unconditionally setting sk->sk_shutdown to SHUTDOWN_MASK will be the right behavior.

Signed-off-by: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>

Acked-by: Ying Xue <ying.xue@windriver.com>

---
 net/tipc/socket.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/net/tipc/socket.c b/net/tipc/socket.c index ebd280e767bd..11b27ddc75ba 100644
--- a/net/tipc/socket.c
+++ b/net/tipc/socket.c
@@ -2771,10 +2771,7 @@ static int tipc_shutdown(struct socket *sock, int how)
 
 	trace_tipc_sk_shutdown(sk, NULL, TIPC_DUMP_ALL, " ");
 	__tipc_shutdown(sock, TIPC_CONN_SHUTDOWN);
-	if (tipc_sk_type_connectionless(sk))
-		sk->sk_shutdown = SHUTDOWN_MASK;
-	else
-		sk->sk_shutdown = SEND_SHUTDOWN;
+	sk->sk_shutdown = SHUTDOWN_MASK;
 
 	if (sk->sk_state == TIPC_DISCONNECTING) {
 		/* Discard any unreceived messages */
--
2.18.4



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
