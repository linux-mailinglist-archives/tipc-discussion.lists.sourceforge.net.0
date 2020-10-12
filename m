Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C1F4328BA99
	for <lists+tipc-discussion@lfdr.de>; Mon, 12 Oct 2020 16:18:21 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kRyeQ-0003TB-Bc; Mon, 12 Oct 2020 14:18:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <runet@innovsys.com>) id 1kRyeO-0003T3-Fb
 for tipc-discussion@lists.sourceforge.net; Mon, 12 Oct 2020 14:18:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:In-Reply-To:References:
 Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=umneeK2skcCLLGIP8VX3GTrqTTm6gG3VrwUEIFvC6fo=; b=PpTV5DsSaSB5jte4MR9r9txX7W
 YI/AUdAoSNFbJ6xEPn9ULZFkeNg+ah1FXvxQnAUf1k/KBPljRG3Y1MwZBWYJ/ZqilaTubD2cwdNQZ
 ROiQxYPT8zl4GBcXNN/UZYQrd3S0cHpykyGnKeidBroW24VZoPFsfyRm5FER5QiYEIBI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:
 CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=umneeK2skcCLLGIP8VX3GTrqTTm6gG3VrwUEIFvC6fo=; b=lGl40bw/U7R7nKRP9Xhta07RtT
 hsX0ku5zefnAjS2jXXxqbHkLhLm1y1fRxMdZf01MSX18qvjwSc0mFkkTYtuHC+H4csUyBgDEgPIZo
 NzXZ/D3htcTEeyERa3oOktmK2BmiE972wI/2/8ZQ4o4Mw3R/DSqX4AC0BK3JsVRAUJiM=;
Received: from smtp.innovsys.com ([96.2.206.15])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kRyeD-007VdO-BT
 for tipc-discussion@lists.sourceforge.net; Mon, 12 Oct 2020 14:18:08 +0000
X-Sendio-Return-Path: runet@innovsys.com
X-Sendio-Delivered: Mon, 12 Oct 2020 09:17:51 -0500
Received: (sendio-qmail 29492 invoked from network); 12 Oct 2020 13:51:11 -0000
X-Sendio-SenderIP: 104.47.58.172
X-Sendio-RemoteSenderIP: 104.47.58.172
X-Sendio-MessageID: 1602510671.29489.1
Received: from unknown (HELO NAM11-BN8-obe.outbound.protection.outlook.com)
 (104.47.58.172)
 by smtp.innovsys.com with ESMTPS (ECDHE-RSA-AES256-GCM-SHA384 encrypted);
 12 Oct 2020 13:51:10 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K1fEvb5tVZ+3gGL5g66fFDJumqJYzWW7pySVel0H9SKctRqpVGvjgNHq3KaUIAcLSyYFWrvhmgjwPH96UcmLbrIH6Z/uMv4E0av5Cj17Z8QTXShsVXiPeyp9vK1XNtbX20bUCI6GdRSMVcu93guWQrRBcKECDaWPIvkqZjY+v5h+NJKsKtYU+pKO05Z2dRKXXb6bkC1/SoZYwDps8EUsJAL92GqAWHPWpIzBD22iLhFSQPlMVVLQupcPDYKy3d8SU4y2dSl8EEcDdNzlXe4FL3xdip6sdPe5GAtR9Bz8wCTYzGVxneyRreCwQ+XGFqXNvrwfSq0dPUIQpLMgIQeulQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=umneeK2skcCLLGIP8VX3GTrqTTm6gG3VrwUEIFvC6fo=;
 b=l93IhQF2uydWI9h0jEdOl0QbXMMK+hQeBePBplya/p1fpALcafhI0Fz5h9EvE3/yrRBXYeJC9+sf0sB/ZrE6hKBMjFaWZy7GiAC4vabitIN4lYbf9w9U+pQ82kH9z1AXFSLFjD+uswxiT9AY2NjKTWfGe4Ne2jP3NIsZoPAO0e7/PVDZLh8mqgTgUA03C6EbLAVifruYSj+TbvJNLtL4zLBmke4Q4fgreCMBI2/H+kKPVHEvEr0+7uTqPFVu+dnA1dii1i9oeDb95JSxss1xEiCIlcLZa3BbHPo2eNHaSl8TSe10wcE9VEEa4sVfKcU7SlKffKDvvUxPdXbOIxjtlQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=innovsys.com; dmarc=pass action=none header.from=innovsys.com;
 dkim=pass header.d=innovsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=innovsys.onmicrosoft.com; s=selector2-innovsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=umneeK2skcCLLGIP8VX3GTrqTTm6gG3VrwUEIFvC6fo=;
 b=g2nd/wWKXnnmzxL9bU6vGsmCRJBn6p5rrY5qbk00EFZOLBZsW6abx+htqeQ1GKdkOzCWqQwKIUJ2qumCK/pL8281mZ/Avp3dNSxBmpbVEWDKbyL/Ez3EnGQKB0D0dEbNDDG5Xuqps0TKiROvYO2w6iLBeJukhY2zQanzmjOiiA8=
Received: from CH2PR13MB3560.namprd13.prod.outlook.com (2603:10b6:610:24::26)
 by CH2PR13MB3687.namprd13.prod.outlook.com (2603:10b6:610:9c::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3477.11; Mon, 12 Oct
 2020 13:51:08 +0000
Received: from CH2PR13MB3560.namprd13.prod.outlook.com
 ([fe80::f0dd:9ade:a9b3:97d3]) by CH2PR13MB3560.namprd13.prod.outlook.com
 ([fe80::f0dd:9ade:a9b3:97d3%5]) with mapi id 15.20.3477.019; Mon, 12 Oct 2020
 13:51:08 +0000
From: Rune Torgersen <runet@innovsys.com>
To: "jmaloy@redhat.com" <jmaloy@redhat.com>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: [tipc-discussion] [net ] tipc: add stricter control of reserved
 service types
Thread-Index: AQHWnxWbKSx/wyu1HUGVZsJPFEebGamT/sYZ
Date: Mon, 12 Oct 2020 13:51:08 +0000
Message-ID: <CH2PR13MB35608E33094C3EBE0D0E4FF1C4070@CH2PR13MB3560.namprd13.prod.outlook.com>
References: <20201010145608.1058917-1-jmaloy@redhat.com>
In-Reply-To: <20201010145608.1058917-1-jmaloy@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=innovsys.com;
x-originating-ip: [96.2.206.100]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3dbf83d9-79a5-4f4f-f274-08d86eb5df53
x-ms-traffictypediagnostic: CH2PR13MB3687:
x-microsoft-antispam-prvs: <CH2PR13MB3687E8B079C0C66BC12402C0C4070@CH2PR13MB3687.namprd13.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1051;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2vE48uWmS/vqX/VJ/y5xbP1oW0YfW+W29yfQVa0Q8wics6GuJ46yryQgWifxHGcS+E0jKrbSr9as1R4ykHF1qUi0ncVHNinaJ6ImOv9pvgAoFN+XcRR7qJZyW3J9ZPgx9HrY9pFSdm8hFMMROaelI2RyyE8WQk8YymY2HXknSJ1BhG/cG30iCEm3sWQfi0R2s6Gyr/i2Mz7ThUsJZ/WFpM9N+s12gvpySs+c6/Gnpz2VEeyMPiDTrwLtctXSvQNuV13DGtpcdgt7O/AeLWuC+QM82sUDr8N4HTbQYl+jl4ymlfHh2t+7E2cnuuqOMgbFGvfbeQBd0yVqcFo1ugSYQldJREjAbWY3YbjjEOAuuq+4LU79L6RaJWE/nwqr4hV1asm3ZHX44RhUeI4Y6iL1jA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH2PR13MB3560.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(376002)(366004)(396003)(39830400003)(136003)(478600001)(8676002)(7696005)(55016002)(55236004)(45080400002)(966005)(33656002)(5660300002)(26005)(8936002)(53546011)(6506007)(9686003)(186003)(91956017)(76116006)(166002)(4326008)(316002)(71200400001)(2906002)(52536014)(66476007)(66446008)(66556008)(66946007)(110136005)(83080400001)(83380400001)(64756008)(86362001)(19627405001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: 7PW0swdEIztOtcrSJ9cpLXwV1tXm7R7HPT5YlHbua80PhT6ujytSQ3lEc/IPOp+2zWmoz7SX07O6/Jr51ErYH7L7XRc5SRflYQ+bH782Y7/2SzdXF161Pk7c/WT0Rv64vhhvaWr45Ljtdazko56bU0QXUX+J3gAp5uxelQn88WbXh3JrzhA0ezdooyVTZrlGyIRecN5ZhXIfNGEf+bqa/8x0Dypjs9GK9EKJEgbYHv5y6QcLbkiKQ5znWPqd90LfH7gUlAVxJxPjK/tkcjFR+/q2mtFDw6MvTSGDxaaK7SdHWWat8IoNvhUhMYZCTHahSiQomMcNDQjmDu8XThbTsZV6QIx7PrWnXjRwANOeEZ+vptlfmgAS6SbpVA/kbs50fB6sZuXTeod8sB6C3gbRvLrjS++pd7UqwH0NZSARdE4NgEUL7qXWBtufLPtI+kYrdspcS1sAop5XXpPH3DsqG1bE0qoivHOGOBa7XLcyfLYuYWQcYWhsZKF0Kl98H2tJ0JGXtNtZYxpJEOC4BgbqSXf/W0khjh96f2llUgNDgM4dKz1FV7P7Rzk5+1ty9zpVcDMgd8k7hBzIdTPWNTGZI0Cipx7HNnxX5tI0xSQrJGYD7rVNPq4DDq6JqXtC/y59fSZ9sLgHEEQqllY4RZNOKA==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: innovsys.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH2PR13MB3560.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3dbf83d9-79a5-4f4f-f274-08d86eb5df53
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Oct 2020 13:51:08.5932 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 7a48ce45-ee97-4a95-ac18-3390878a179b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3Ly6u3e3PWUidhFavLx5Dbf3MnxwUsNWdnpbDPPmlMCOA/w0igtxBL+thVK03upvls78bF+aOHHOynb88EZajMvGvSO3CqlvVNxPDB894bg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR13MB3687
X-Spam-Score: 2.0 (++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 LH_URI_DOM_IN_PATH     URI: Long-host URI having a domain name in the
 path part
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kRyeD-007VdO-BT
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: Re: [tipc-discussion] [net ] tipc: add stricter control of reserved
 service types
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

Hi.

We use the tipc topology server extensively in our system to keep track of other instances of an app.
Dies this chage mea we cannot use the topology server anymore?

This si the userland code we use
(this one would check on open sockets on 200:0 to 200:255

void * TipcTopologyServerThread(void * context)
{
    int tipcStatusSocket;
    struct tipc_event event;
    struct sockaddr_tipc topsrv;

    struct tipc_subscr subscr = {{200, 0, 255},
        TIPC_WAIT_FOREVER,
        TIPC_SUB_SERVICE,
        {5,5,5,5,5,5,5,5}};


    memset(&topsrv, 0, sizeof(topsrv));
    topsrv.family = AF_TIPC;
    topsrv.addrtype = TIPC_ADDR_NAME;
    topsrv.addr.name.name.type = TIPC_TOP_SRV;
    topsrv.addr.name.name.instance = TIPC_TOP_SRV;

    tipcStatusSocket = socket(AF_TIPC, SOCK_SEQPACKET,0);
    if (tipcStatusSocket < 0)
    {
        perror("TipcTopologyThread: Could not make TIPC socket");
    }

    // Connect to topology server:
    if (0 > connect(tipcStatusSocket,(struct sockaddr*)&topsrv,sizeof(topsrv)))
    {
        perro("TipcTopologyThread: Could not connect to TIPC topology server");
        return NULL;
    }

    if (send(tipcStatusSocket,&subscr,sizeof(subscr),0) != sizeof(subscr))
    {
        printf("TipcTopologyThread: Failed to send topology server subscription");
        return NULL;
    }

    // Now wait for the subscriptions to fire:
    while(true)
    {
        int ret = recv(tipcStatusSocket,&event,sizeof(event),0);
        if (ret == sizeof(event))
        {
            printf("Received an event\n");
            if (event.event == TIPC_PUBLISHED)
            {
               printf("received a TIPC_PUBLISH msg, type: %u, found_lower: %u, found_upper: %u\n", event.s.seq.type, event.found_lower, event.found_upper);
               // do something
            }
            else if (event.event == TIPC_WITHDRAWN)
            {
               printf("received a TIPC_WITHDRAWN msg, type: %u, found_lower: %u, found_upper: %u\n", event.s.seq.type, event.found_lower, event.found_upper);
               // do something
            }
            else if (event.event == TIPC_SUBSCR_TIMEOUT)
            {
               printf("received a TIPC_SUBSCR_TIMEOUT msg, type: %u, found_lower: %u, found_upper: %u\n", event.s.seq.type, event.found_lower, event.found_upper);
            }
        }
    }

    return NULL;
}




________________________________
From: jmaloy@redhat.com <jmaloy@redhat.com>
Sent: Saturday, October 10, 2020 9:56 AM
To: tipc-discussion@lists.sourceforge.net <tipc-discussion@lists.sourceforge.net>
Cc: xinl@redhat.com <xinl@redhat.com>
Subject: [tipc-discussion] [net ] tipc: add stricter control of reserved service types

This email originated from outside Innovative Systems. Do not click links or open attachments unless you recognize the sender and know the content is safe.


From: Jon Maloy <jmaloy@redhat.com>

TIPC reserves 64 service types for current and future internal use.
Therefore, the bind() function is meant to block regular user sockets
from being bound to these values, while it should let through such
bindings from internal users.

However, since we at the design moment saw no way to distinguish
between regular and internal users the filter function ended up
with allowing all bindings of the types which were really in use
([0,1]), and block all the rest ([2,63]).

This is dangerous, since a regular user may bind to the service type
representing the topology server (TIPC_TOP_SRV == 1) or the one used
for indicating neigboring node status (TIPC_CFG_SRV == 0), and wreak
havoc for users of those services. I.e., practically all users.

The reality is however that TIPC_CFG_SRV never is bound through the
bind() function, since it doesn't represent a regular socket, and
TIPC_TOP_SRV can easily be filtered out, since it is the very first
binding performed when the system is starting.

We can hence block TIPC_CFG_SRV completely, and only allow TIPC_TOP_SRV
to be bound once, and the correct behavior is achieved. This is what we
do in this commit.

It should be noted that, although this is a change of the API semantics,
there is no risk we will break any currently working applications by
doing this. Any application trying to bind to the values in question
would be badly broken from the outset, so there is no chance we would
find any such applications in real-world production systems.

Signed-off-by: Jon Maloy <jmaloy@redhat.com>
---
 net/tipc/socket.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/net/tipc/socket.c b/net/tipc/socket.c
index e795a8a2955b..67875a5761d0 100644
--- a/net/tipc/socket.c
+++ b/net/tipc/socket.c
@@ -665,6 +665,7 @@ static int tipc_bind(struct socket *sock, struct sockaddr *uaddr,
        struct sockaddr_tipc *addr = (struct sockaddr_tipc *)uaddr;
        struct tipc_sock *tsk = tipc_sk(sk);
        int res = -EINVAL;
+       u32 stype, dnode;

        lock_sock(sk);
        if (unlikely(!uaddr_len)) {
@@ -691,9 +692,10 @@ static int tipc_bind(struct socket *sock, struct sockaddr *uaddr,
                goto exit;
        }

-       if ((addr->addr.nameseq.type < TIPC_RESERVED_TYPES) &&
-           (addr->addr.nameseq.type != TIPC_TOP_SRV) &&
-           (addr->addr.nameseq.type != TIPC_CFG_SRV)) {
+       stype = addr->addr.nameseq.type;
+       if (stype < TIPC_RESERVED_TYPES &&
+           (stype != TIPC_TOP_SRV ||
+            tipc_nametbl_translate(sock_net(sk), stype, stype, &dnode))) {
                res = -EACCES;
                goto exit;
        }
--
2.25.4



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://nam10.safelinks.protection.outlook.com/?url=https%3A%2F%2Flists.sourceforge.net%2Flists%2Flistinfo%2Ftipc-discussion&amp;data=04%7C01%7Crunet%40innovsys.com%7Cf5c6eae3597f44e1c37e08d86d2cbb7c%7C7a48ce45ee974a95ac183390878a179b%7C0%7C0%7C637379386198215419%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&amp;sdata=BCCVlEaV2ObPW5zknkRAxXhGkWFcG%2Fgwaz6LuRHR3kc%3D&amp;reserved=0

_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
