Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C25928BAAC
	for <lists+tipc-discussion@lfdr.de>; Mon, 12 Oct 2020 16:20:28 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kRygW-0003oN-7w; Mon, 12 Oct 2020 14:20:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <runet@innovsys.com>) id 1kRygV-0003oG-0Y
 for tipc-discussion@lists.sourceforge.net; Mon, 12 Oct 2020 14:20:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:In-Reply-To:References:
 Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eJ45S9CU6DLHWiWTfBZdDcB656xSFd1Ahd23ZYGYbkk=; b=DxmcbKIgRbr1SPaA3h51cjaYoj
 UY1LCx+U7lgZIzIYgSw1l2TFfRG97zz8krfZm+vPDywcm5sLk26kMeOK5+SBo3lxxPs4sQcsTItzI
 LhWMJoBnLghwntCbfSaYTHDla10V4m1FRXnkjTE+NRuhdylkPDwL1MQe7Y+p2kiulc9Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:
 CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=eJ45S9CU6DLHWiWTfBZdDcB656xSFd1Ahd23ZYGYbkk=; b=hhYulV/1qdyG4B60T32Pd7+KQ/
 2hKCxgydiPE+zKJ6euph2Lds67asAMlJhS15fL2LDxBl9agKwlJS3Ro2I4FaXKUzloz2tJ9TtJwmP
 1lZmwYshHhUR0QDpTYft5ncryeN4mQ1jryXeBCCzbDyQA+bSuhhTYZR9uXu0avPxMSQs=;
Received: from smtp.innovsys.com ([96.2.206.15])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kRygE-00CCdV-20
 for tipc-discussion@lists.sourceforge.net; Mon, 12 Oct 2020 14:20:18 +0000
X-Sendio-Return-Path: runet@innovsys.com
X-Sendio-Delivered: Mon, 12 Oct 2020 09:19:49 -0500
Received: (sendio-qmail 30016 invoked from network); 12 Oct 2020 13:53:08 -0000
X-Sendio-SenderIP: 104.47.59.174
X-Sendio-RemoteSenderIP: 104.47.59.174
X-Sendio-MessageID: 1602510788.30004.1
Received: from unknown (HELO NAM12-DM6-obe.outbound.protection.outlook.com)
 (104.47.59.174)
 by smtp.innovsys.com with ESMTPS (ECDHE-RSA-AES256-GCM-SHA384 encrypted);
 12 Oct 2020 13:53:08 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gVKecFhle8ap8TBI3srNdGftoCAYyiM0rltQCFiEYlvFW44eOz6mBdej/mGfM/3JX6oJYS9ZZHqllJmpty0PSF5b3rsdlvITsESN51iVBcQYYk8oWYMMytQmU7AK1CRoYHIOQCoD+guqyNWKE/j2gN+jZviEczVxnx0qozSV4olNw8bcqDkusZ0C5a82Pg3MYM52yYaQW/4+cHNFdrpT2w/6wbeTMS5ahWQ3gtzOSK0u5rTI549oL2wnLmKeY/htfrRYjFCPUFE25Se/ir752UkaojidRj7RGSG+3I5/L+fzbalVbNKemJy9A+OyKL8RolBwVt4nwsG3JPUEWlknrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eJ45S9CU6DLHWiWTfBZdDcB656xSFd1Ahd23ZYGYbkk=;
 b=Gjd17ehQKhZK7lg+hMMLhGp/nLkUxAPmkJqhNAmQNW7M9hrJfbDE2xkla66j66xgyH/bSr6WuDfMAcmJQVmSX6+8wgRkmPIwP6vHCBQp8MbJ/zFs5ExNRNU//yAZKcAfy+zu9SmHJqex3HU6q5LYXDfD8aw5ux08GJha4v+N3RaN18bFte5JaD+Uak3D9VlKsvFBVCxlda0ZZQmaRQLNJRNpy/tU5MLvhmWtNPjaaAR10kTUzUoNmEfnCNqL9+lU6mGmhQQLyjMyB6vu5yL5IoE4nEOqvMRv5WSHancI1A5D0UxX6EhaNe5S7W7APnTXG2uyOkaAVgQKiX8m8r7i6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=innovsys.com; dmarc=pass action=none header.from=innovsys.com;
 dkim=pass header.d=innovsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=innovsys.onmicrosoft.com; s=selector2-innovsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eJ45S9CU6DLHWiWTfBZdDcB656xSFd1Ahd23ZYGYbkk=;
 b=GVUfPd3OEHvdK/TWUZU4+p03+6Ywexnm5FlvB2sJPJqcfrJUtpgIKUj6c1ry7NC9P+RGasJ2wlZ5HA2JyCp9vKdQCwbUweFbbWK/H0YZCXW2usB84K+NC5/SqGH1Itqk3rWQH8EZGEJRn3dbsZm/WeXqdaW+66hjvrhD1Obs5Pk=
Received: from CH2PR13MB3560.namprd13.prod.outlook.com (2603:10b6:610:24::26)
 by CH2PR13MB3687.namprd13.prod.outlook.com (2603:10b6:610:9c::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3477.11; Mon, 12 Oct
 2020 13:53:06 +0000
Received: from CH2PR13MB3560.namprd13.prod.outlook.com
 ([fe80::f0dd:9ade:a9b3:97d3]) by CH2PR13MB3560.namprd13.prod.outlook.com
 ([fe80::f0dd:9ade:a9b3:97d3%5]) with mapi id 15.20.3477.019; Mon, 12 Oct 2020
 13:53:06 +0000
From: Rune Torgersen <runet@innovsys.com>
To: "jmaloy@redhat.com" <jmaloy@redhat.com>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: [tipc-discussion] [net ] tipc: add stricter control of reserved
 service types
Thread-Index: AQHWnxWbKSx/wyu1HUGVZsJPFEebGamT/sYZgAAAtqo=
Date: Mon, 12 Oct 2020 13:53:06 +0000
Message-ID: <CH2PR13MB35600C6726ABACAE9F2E4FACC4070@CH2PR13MB3560.namprd13.prod.outlook.com>
References: <20201010145608.1058917-1-jmaloy@redhat.com>,
 <CH2PR13MB35608E33094C3EBE0D0E4FF1C4070@CH2PR13MB3560.namprd13.prod.outlook.com>
In-Reply-To: <CH2PR13MB35608E33094C3EBE0D0E4FF1C4070@CH2PR13MB3560.namprd13.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=innovsys.com;
x-originating-ip: [96.2.206.100]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 67b02b2b-1cc9-4d4a-d09e-08d86eb625a9
x-ms-traffictypediagnostic: CH2PR13MB3687:
x-microsoft-antispam-prvs: <CH2PR13MB36877CF3CF35A6CCABCE947FC4070@CH2PR13MB3687.namprd13.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1051;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: RCiXUx42DAjBTlx6MatJfRjhyXyZGmgAf4xfC4mU0ddIGNndZuQAnyU8WoHD7SL5d9ioOAABEXa6uq4teGh7m9CCxVq8gwS5ZotLLpUXKniW2n1A+Oz2ZvB+R5WXB1kMkRGZdyfgW8cPTs/GR+fV/o+lzW3ziZqLVYxa7anHSDByc59ByFTStkbaPKdvDnjhSK1J2BA5SeFsHhTKtfI3Qe5Ee7ZYD1VUqEAHudDIkVGfiKnNFcl9OX0EWPlZlEKihDhyLEzqZ6jymJiES5lYtkzhTnuSwih6Af4aTbVxkwdosq4ogDf0O79ES1NHizS50XqkYxx8XtaHxms3tFfRTNr0wNrFnATM+sDu6NY+Weo/bmEDrDB3S3QjP0djMcbGyTFlFp9w6rvy43OJzaZqSg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH2PR13MB3560.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(376002)(366004)(396003)(39830400003)(136003)(478600001)(8676002)(7696005)(55016002)(55236004)(45080400002)(966005)(2940100002)(33656002)(5660300002)(26005)(8936002)(53546011)(6506007)(9686003)(186003)(91956017)(76116006)(166002)(4326008)(316002)(71200400001)(2906002)(52536014)(66476007)(66446008)(66556008)(66946007)(110136005)(83080400001)(83380400001)(64756008)(86362001)(19627405001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: WpVyStlhJ0t1+TuRKGI9oBicc7dYn/itiBdfJT2EqRjdm1b2epfkm5RiEFzlStBTo2cpcSMliEW7bKNSf2MabNL+1SKZ1GVGMF6aiVnltQwnnpVG/fWOI56oepE8KBrlBq824c64J5aOTpcygivQBfbD4Oyo9a5zOKwnjfr2IXcV/aUWn7nT/yETsuUzynV3iOyi6yuIjZWJmC0/LpkmSV1s67qfv63jTOtCA2ZFcgCG/yETFc9yuYnVFXBFnIbnzo6vWYxvlcKaIW6DdkiMDU+1sEsG60oU1J+1F9RKEKh7zmWBqXYlOwYgFsYvJIyyxZpUCVPjmY228lFd6t/cPGN+WEt2LB4MDR57Bba0/go7ITdKg6wSEYChqpaQ9rmP3HsOFWXITfwFe6QmnFoGOgGFNNh2ytggjMsrTc5fqP9JwkyWJx0FsW3Ov8yxvRNX7T3X3sTnrKzIYR+JwD7Shp1ygotlT2WWCTE+iHJnjJn/3n/Mah8lGSiChmbkdLOirTAYpczGCZtXsgmsRXzCj6DExgnStk4ArQm/0xz0cLAdrT4tf1A4N6hlATOc3MuZfWlb65AwcHRcVG6bdRyzPMiPLZcVnGIqg4s9CIQnGEamUv2mUrUPbXNMUvFBS1Tb3M1NJnsdgYQW8LgRMzbFLA==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: innovsys.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH2PR13MB3560.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 67b02b2b-1cc9-4d4a-d09e-08d86eb625a9
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Oct 2020 13:53:06.6725 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 7a48ce45-ee97-4a95-ac18-3390878a179b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QtfHtysW/Tfsi4HS9OjKcIfPucqAp4pyK7W/JgD1myD/AVY+heb9+IYCa3lFI9arjX7KpkR0UShERi3te8Wz63T+HvG71QoWMlW5LqegcmA=
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
X-Headers-End: 1kRygE-00CCdV-20
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

I think I see now.
This would block anybody from calling bind() on the topology server (except first user in kernel)
Using connect() should be fine.

Sorry, did not read clearly enough.

________________________________
From: Rune Torgersen <runet@innovsys.com>
Sent: Monday, October 12, 2020 8:51 AM
To: jmaloy@redhat.com <jmaloy@redhat.com>; tipc-discussion@lists.sourceforge.net <tipc-discussion@lists.sourceforge.net>
Cc: xinl@redhat.com <xinl@redhat.com>
Subject: Re: [tipc-discussion] [net ] tipc: add stricter control of reserved service types

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
