Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 30C789D1F9
	for <lists+tipc-discussion@lfdr.de>; Mon, 26 Aug 2019 16:49:53 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1i2GJW-0004ti-8e; Mon, 26 Aug 2019 14:49:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jon.maloy@ericsson.com>) id 1i2GJU-0004tI-G4
 for tipc-discussion@lists.sourceforge.net; Mon, 26 Aug 2019 14:49:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=opV0QgDqXICV5RnW8FQu4Xwg/PMFblj8mDfoDzYrV1w=; b=bFIQZAzipmTMkhtimRX/pWoE1D
 4Rsg2UVOb+5swNYhCdMiGZqzUg2C/P0naCxNPaFZz74EhhBemB/7qQ/gAjactgCDHtYD/kRxZXncv
 tLyd3teLgydCDbRCEmRYolTkxz1cD/VaGEPvGnFFghQMLUsHvDRhvaHQy+0XQvrwCsWY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=opV0QgDqXICV5RnW8FQu4Xwg/PMFblj8mDfoDzYrV1w=; b=ktJyYouvJRxOpckPZYIybhOevT
 aLuzA+2p475WdsiRUan1usTr98U5orx5NarAAk8eXGlhCoE+M2ewqK0E654bYeun1Cwp7362UCPwC
 vFKpSgVNmeOgNqR0cDBkdzAcCqYLLHsd2MGmikHU9FyEt0h/4PfZBEpm03MDDyeX4mn0=;
Received: from mail-eopbgr750051.outbound.protection.outlook.com
 ([40.107.75.51] helo=NAM02-BL2-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1i2GJR-00GRRv-Q7
 for tipc-discussion@lists.sourceforge.net; Mon, 26 Aug 2019 14:49:44 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JtkI6NtowM9eD4/H+MhTAHQQRsitPcdpmGem2ZZA3laFyMuc9EuI2ZYCYVugecj4grIXwHzPfO9NKGed8XHDEPU+YAZlwDZN/Z4IxiCAciVlXjvMnjGnq5i6rQsBAUEeKFEAHRSf50t3yt9FKq1fubHqBgfuxSomRMfPtv3XHqWvyMFHvpSIEksuPutUE1rObXRTml8rAmtE/DiExe/ioiZDhZyGyyvE1F46iTRemimAa64SE2hZk0iLrNIZIcLTfviOSgbY41/d+BH6brH8r8Eb9COCqIvZCx8yY8RMP9A0xSkyBXcnY6scsBAXIHxSpzedeX4LC2RULpEnu73saQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=opV0QgDqXICV5RnW8FQu4Xwg/PMFblj8mDfoDzYrV1w=;
 b=LPJRaq4cZClyiU4E4XDZy44EEnQazBCuarb1XsmKWS9VilvZv4tH19vjlfESE+SjXK6OUyfN+As3fH+gYtlW5T0DQEzyTl/vCf55GNb2mlV+sbbzbo9qNpJ+F2eiA4hbfYZTfh7QDuAhntTc+8GG16R7g3nuiSql8yaMzMQHYEtlrmib8DcWq1Lyb6CBbYOXAfifUdK4Q7kg/smwcDWkpLDav0KQvpzzph7VpKY6SEQ9LnJlXINaRK3FzS5x1UCuIR420voq2oZ2xLpKbURM6Ra5diChEdYh08fmG6fk+l5H4yZ9DIPnuoKxcWDx/MEc1nrBeVK+RYVIjyAjqmwXvw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ericsson.com; dmarc=pass action=none header.from=ericsson.com;
 dkim=pass header.d=ericsson.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ericsson.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=opV0QgDqXICV5RnW8FQu4Xwg/PMFblj8mDfoDzYrV1w=;
 b=Fncfz0aasFE/Oyf/j3zxuWKKJUFwQ98o0yxF5vRjvsSScdFcAHERqca8fi18AuI1bjDJe6i1A8yGYLTpw9clMd/qwnPUj7TlexWelV1ufahFKVycAaC2569s+Dt9lYbhMRq8RKKOsLgbSkNBgzc1rfyXMZcpgPbx6ZuA3Uod904=
Received: from CH2PR15MB3575.namprd15.prod.outlook.com (10.255.156.17) by
 CH2PR15MB3640.namprd15.prod.outlook.com (52.132.229.30) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.16; Mon, 26 Aug 2019 14:34:40 +0000
Received: from CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::49b5:cc04:ec33:c7c2]) by CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::49b5:cc04:ec33:c7c2%7]) with mapi id 15.20.2199.021; Mon, 26 Aug 2019
 14:34:40 +0000
From: Jon Maloy <jon.maloy@ericsson.com>
To: Tuong Tong Lien <tuong.t.lien@dektech.com.au>, 'Jon Maloy'
 <maloy@donjonn.com>
Thread-Topic: [net-next  1/1] tipc: reduce risk of wakeup queue starvation
Thread-Index: AQHVWobn2Ed6HX1bLESIQMn0hKanm6cKWNWQgAL5OICAACryYA==
Date: Mon, 26 Aug 2019 14:34:40 +0000
Message-ID: <CH2PR15MB3575E256BC27D13DFD5164D59AA10@CH2PR15MB3575.namprd15.prod.outlook.com>
References: <1566656332-17161-1-git-send-email-jon.maloy@ericsson.com>
 <CH2PR15MB35753A5BEDDB5B76488936619AA70@CH2PR15MB3575.namprd15.prod.outlook.com>
 <082c01d55c03$90eff580$b2cfe080$@dektech.com.au>
In-Reply-To: <082c01d55c03$90eff580$b2cfe080$@dektech.com.au>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jon.maloy@ericsson.com; 
x-originating-ip: [24.225.233.31]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d5e027cb-3667-45b0-d420-08d72a328759
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:CH2PR15MB3640; 
x-ms-traffictypediagnostic: CH2PR15MB3640:
x-ld-processed: 92e84ceb-fbfd-47ab-be52-080c6b87953f,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CH2PR15MB3640182308BBB2FA1A5436659AA10@CH2PR15MB3640.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3631;
x-forefront-prvs: 01415BB535
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(396003)(136003)(39860400002)(376002)(366004)(13464003)(189003)(199004)(66946007)(6506007)(53546011)(6246003)(102836004)(26005)(256004)(14444005)(55016002)(229853002)(186003)(446003)(11346002)(25786009)(486006)(71190400001)(71200400001)(476003)(66066001)(2906002)(44832011)(4326008)(8676002)(81156014)(81166006)(6116002)(3846002)(9686003)(8936002)(14454004)(52536014)(53936002)(478600001)(74316002)(7736002)(6436002)(86362001)(76116006)(76176011)(110136005)(54906003)(5660300002)(99286004)(316002)(33656002)(66556008)(305945005)(7696005)(66446008)(64756008)(66476007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR15MB3640;
 H:CH2PR15MB3575.namprd15.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: ericsson.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: TZxdq0g25qOXBMJotm1n0dkc6iDIsIkVgehlQiGTS9zPrtELsqx1MGzhr860lnTMCGvXlVEzZ1oHU1EjNMScNG5k/0/HCJOXK6fZSZRhOhqRTnW4xxZIAELPsC9nLu71wmO9cL7zDzdbp2YL4eac16L91fHRS7UcJv/a9ZFlAlLSPrtkHU3CUDFUAhkr4hx73YqiskkgzOyst8Tg16hpW+OSpVNvahB9TnGONnyxKcqXcKO0DcFfeorcBahgpM/LDHHK8JAyBCuWEg+6F3lC74El4XJLJHP39rrMtVUaV8QdbYpRAaBOkqga+WbLevOPTnDMFUEvWUXUsnxTd/PoHJweS3oymIxaEN4QU42dK3DauxjjQhz8g+DeMpu1ZJt861f9R0dgBN2t0q0BeNCytlOPnJRoQ5/X0GtC/SDAMZg=
MIME-Version: 1.0
X-OriginatorOrg: ericsson.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d5e027cb-3667-45b0-d420-08d72a328759
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Aug 2019 14:34:40.1268 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 92e84ceb-fbfd-47ab-be52-080c6b87953f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kC78qoOHcGd/WnwFFxi85KWl1CN2rTQGYWwtkfjGnGj5V6LokN9IuGBEaSptn99WiucMrqNh80Mm1Ea891n3JA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR15MB3640
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.75.51 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1i2GJR-00GRRv-Q7
Subject: Re: [tipc-discussion] [net-next 1/1] tipc: reduce risk of wakeup
 queue starvation
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
Cc: "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>, Mohan Krishna Ghanta Krishnamurthy
 <mohan.krishna.ghanta.krishnamurthy@ericsson.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net



> -----Original Message-----
> From: Tuong Lien Tong <tuong.t.lien@dektech.com.au>
> Sent: 26-Aug-19 07:44
> To: Jon Maloy <jon.maloy@ericsson.com>; 'Jon Maloy'
> <maloy@donjonn.com>
> Cc: Mohan Krishna Ghanta Krishnamurthy
> <mohan.krishna.ghanta.krishnamurthy@ericsson.com>;
> parthasarathy.bhuvaragan@gmail.com; Tung Quang Nguyen
> <tung.q.nguyen@dektech.com.au>; Hoang Huu Le
> <hoang.h.le@dektech.com.au>; Gordan Mihaljevic
> <gordan.mihaljevic@dektech.com.au>; ying.xue@windriver.com; tipc-
> discussion@lists.sourceforge.net
> Subject: RE: [net-next 1/1] tipc: reduce risk of wakeup queue starvation
> 
> Hi Jon,
> 
> Yes, you are right, my previous patch was not complete (sorry, I have not
> verified it but just wanted to give a general idea...). Actually, we could still
> preserve the necessary data/header of the original message for building the
> wakeup message later as needed (look, just the message 'dport'
> is enough).

dport *and* the original importance. I was considering this myself, but I didn't like it.

 However, I don't really like this approach because there is still an
> issue there (see below).
> 
> Your patch can fix the bug I mentioned earlier (i.e. unlimited bundles of small
> messages...), but looks like it has a side-effect. We may again encounter the
> starvation issue that we have tried to overcome by the previous patches, that
> is, a socket user with a certain importance level messages can make the others
> starved, in this case it's the 'CRITICAL'
> level? 
That is a side effect I was aware of, but I don't see it as a showstopper. Normally, only a small percentage of the sockets are using the CRITICAL level, and the backlog queue limit is very high for this level. So, if we ever run into this limit we can be pretty sure it is due to bundling, in which case I think it is only fair to throttle the lower levels too. 

A much worse side effect is that my patch would block even SYSTEM level messages, which of course is unacceptable. So my patch has to be improved in that respect.

> With the additional condition at the link_xmit(), we will limit the other
> level users (i.e. report link congestion & cause them to wait...) just due to the
> congestion at the 'CRITICAL' level (i.e. not their own levels) of the backlog
> queue. Even, a "true" CRITICAL user that wants to send a message will face the
> issue because the bundles of small messages at lower levels occupy all the
> 'CRITICAL' slots...
> 
> Really, I don't understand the purpose we set the importance level of a bundle
> to 'CRITICAL', which even gives more slots for the "less important"
> users with small messages... 
We have to give it *some* importance, and since it very often contains CRITICAL messages it looks to me that is the correct level.
This also means that we can bundle a lot more messages, even of lower importance, before having to put users to sleep.
An alternative might be to give the bundle message the importance of the highest-importance message inside the bundle.
That would be better than putting all at CRITICAL level, but doesn't really solve our problem. 

> Isn't it by dividing & increasing the backlog level
> limits, we want to give more chances for higher level users in message
> sending? I think we should improve the bundle algorithm a little bit to reflect
> the backlog level usages accurately instead. I will send you another patch...

I have received your patch, and will study it.

///jon

> 
> BR/Tuong
> 
> -----Original Message-----
> From: Jon Maloy <jon.maloy@ericsson.com>
> Sent: Saturday, August 24, 2019 9:29 PM
> To: Jon Maloy <maloy@donjonn.com>
> Cc: Mohan Krishna Ghanta Krishnamurthy
> <mohan.krishna.ghanta.krishnamurthy@ericsson.com>;
> parthasarathy.bhuvaragan@gmail.com; Tung Quang Nguyen
> <tung.q.nguyen@dektech.com.au>; Hoang Huu Le
> <hoang.h.le@dektech.com.au>; Tuong Tong Lien
> <tuong.t.lien@dektech.com.au>; Gordan Mihaljevic
> <gordan.mihaljevic@dektech.com.au>; ying.xue@windriver.com; tipc-
> discussion@lists.sourceforge.net
> Subject: RE: [net-next 1/1] tipc: reduce risk of wakeup queue starvation
> 
> Hi Tuong,
> While experimenting with byte-oriented flow control I realized that this is a
> very real problem that has to be fixed.
> I first tried your suggestion with putting the congestion test at the end of
> tipc_link_xmit(), but realized that we need access to the original message
> header when we are scheduling a user to the wakeup queue. But this header is
> already gone if original the message was bundled and deleted!
> Also, there is no more space in the CB area for storing the per-level counter in
> the bundle packets, as was my first suggestion.
> 
> So, this was the simplest solution I could come up with. It seems to work well,
> but seems to give a slight performance degradation. I am afraid we will have
> to accept that for now.
> 
> Please give feedback.
> 
> ///jon
> 
> 
> 
> > -----Original Message-----
> > From: Jon Maloy <jon.maloy@ericsson.com>
> > Sent: 24-Aug-19 10:19
> > To: Jon Maloy <jon.maloy@ericsson.com>; Jon Maloy
> <maloy@donjonn.com>
> > Cc: Mohan Krishna Ghanta Krishnamurthy
> > <mohan.krishna.ghanta.krishnamurthy@ericsson.com>;
> > parthasarathy.bhuvaragan@gmail.com; Tung Quang Nguyen
> > <tung.q.nguyen@dektech.com.au>; Hoang Huu Le
> > <hoang.h.le@dektech.com.au>; Tuong Tong Lien
> > <tuong.t.lien@dektech.com.au>; Gordan Mihaljevic
> > <gordan.mihaljevic@dektech.com.au>; ying.xue@windriver.com; tipc-
> > discussion@lists.sourceforge.net
> > Subject: [net-next 1/1] tipc: reduce risk of wakeup queue starvation
> >
> > We have identified a problem with the "oversubscription" policy in the
> link
> > transmission code.
> >
> > When small messages are transmitted, and the sending link has reached
> > the transmit window limit, those messages will be bundled and put into
> > the
> link
> > backlog queue. However, bundles of data messages are counted at the
> > 'CRITICAL' level, so that the counter for that level, instead of the
> counter for
> > the real, bundled message's level is the one being increased.
> > Subsequent, to-be-bundled data messagea at non-CRITICAL levels
> > continue to be tested against the unchanged counter for their own
> > level, while contributing to an unrestrained increase at the CRITICAL backlog
> level.
> >
> > This leaves a gap in congestion control algorithm for small messages,
> > and
> may
> > eventually lead to buffer exhaustion and link reset.
> >
> > We fix this by adding a test for congestion at the CRITICAL level, as
> > well
> as the
> > existing testing for the message's own level, whenever a message is
> > transmitted. We also refuse to notify any waiting users as long as
> congestion at
> > the CRITICAL level exists.
> >
> > Reported-by: Tuong Lien <tuong.t.lien@dektech.com.au>
> > Signed-off-by: Jon Maloy <jon.maloy@ericsson.com>
> > ---
> >  net/tipc/link.c | 18 +++++++++++++-----
> >  1 file changed, 13 insertions(+), 5 deletions(-)
> >
> > diff --git a/net/tipc/link.c b/net/tipc/link.c index 6cc75ff..25a6acb
> 100644
> > --- a/net/tipc/link.c
> > +++ b/net/tipc/link.c
> > @@ -77,6 +77,11 @@ struct tipc_stats {
> >  	u32 msg_length_profile[7]; /* used for msg. length profiling */  };
> >
> > +struct tipc_backlog {
> > +	u16 len;
> > +	u16 limit;
> > +};
> > +
> >  /**
> >   * struct tipc_link - TIPC link data structure
> >   * @addr: network address of link's peer node @@ -157,10 +162,7 @@
> > struct tipc_link {
> >  	/* Sending */
> >  	struct sk_buff_head transmq;
> >  	struct sk_buff_head backlogq;
> > -	struct {
> > -		u16 len;
> > -		u16 limit;
> > -	} backlog[5];
> > +	struct tipc_backlog backlog[5];
> >  	u16 snd_nxt;
> >  	u16 window;
> >
> > @@ -862,6 +864,9 @@ static void link_prepare_wakeup(struct tipc_link *l)
> >  	for (; imp <= TIPC_SYSTEM_IMPORTANCE; imp++)
> >  		avail[imp] = l->backlog[imp].limit - l->backlog[imp].len;
> >
> > +	if (avail[TIPC_CRITICAL_IMPORTANCE] <= 0)
> > +		return;
> > +
> >  	skb_queue_walk_safe(wakeupq, skb, tmp) {
> >  		imp = TIPC_SKB_CB(skb)->chain_imp;
> >  		if (avail[imp] <= 0)
> > @@ -949,6 +954,7 @@ int tipc_link_xmit(struct tipc_link *l, struct
> > sk_buff_head *list,
> >  	struct sk_buff_head *backlogq = &l->backlogq;
> >  	struct sk_buff *skb, *_skb, *bskb;
> >  	int pkt_cnt = skb_queue_len(list);
> > +	struct tipc_backlog *bklog = l->backlog;
> >  	int rc = 0;
> >
> >  	if (unlikely(msg_size(hdr) > mtu)) { @@ -960,7 +966,9 @@ int
> > tipc_link_xmit(struct tipc_link *l, struct sk_buff_head *list,
> >  	}
> >
> >  	/* Allow oversubscription of one data msg per source at congestion
> */
> > -	if (unlikely(l->backlog[imp].len >= l->backlog[imp].limit)) {
> > +	if (bklog[TIPC_CRITICAL_IMPORTANCE].len >=
> > +	    bklog[TIPC_CRITICAL_IMPORTANCE].limit ||
> > +	    bklog[imp].len >= bklog[imp].limit) {
> >  		if (imp == TIPC_SYSTEM_IMPORTANCE) {
> >  			pr_warn("%s<%s>, link overflow", link_rst_msg,
> l->name);
> >  			return -ENOBUFS;
> > --
> > 2.1.4
> 



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
