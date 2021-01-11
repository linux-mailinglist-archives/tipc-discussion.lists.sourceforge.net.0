Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BAE9E2F185F
	for <lists+tipc-discussion@lfdr.de>; Mon, 11 Jan 2021 15:35:05 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kyyHW-0002si-Lf; Mon, 11 Jan 2021 14:34:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Ying.Xue@windriver.com>) id 1kyyHV-0002sX-BM
 for tipc-discussion@lists.sourceforge.net; Mon, 11 Jan 2021 14:34:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dHZIsNLWm9YUcBwhQLJoDHocguC7TH2fapdG1LUTDLo=; b=MkT9tn5LPOtdPQaF3kRo2Kc1SD
 yzgnNzSijSo0Syf5iPf2I0Fyrq9ZZYOBsuEMiXkeKohfHvGNVcgpOS3/bWqrPGsQDuykUeov9QXmL
 9WoZH4RostIO32ypvFN2EOrQubXWb8NAC+C6q5lv5BIacY/D6aXBkKC3ik/Lx1By0LCQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=dHZIsNLWm9YUcBwhQLJoDHocguC7TH2fapdG1LUTDLo=; b=LdOn8OlYqzKuNfQ9pzYfX3n1Sz
 aRPhEpO3HeDLPhXO9A+eY0dYr7UdRCJOuHt6zc/VkM7luGRNtWZBqOlDDBNvfdFZnGr9VBYeHLr/k
 o6zD3NqXbH1T1sfM1TRp6oRakfHAP4GC/FNXIqfzXlopFiDOFDcdXvTtZo9SyaAs/81g=;
Received: from mail-dm6nam11on2069.outbound.protection.outlook.com
 ([40.107.223.69] helo=NAM11-DM6-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kyyHG-001KFY-ER
 for tipc-discussion@lists.sourceforge.net; Mon, 11 Jan 2021 14:34:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aKKhNJQC/k2Zl1kLLfNMXtC0ph9NY6ZizEoJRJrzDn93Kh8CN1j9OrIPfw6iIcOznrEstiGc3VrADqKw3ZQOOuF9jtCC3z0gjJueWiL+g/sqVjlXdnCi0REDYyGLQWKimtVsdaGgEhUn05txb8WZ6+tyPbgyjoyLbx+ispsimCMmOmhtJS9zgjZ9f1LlmyegQt5Az6XQ8St9iZk3FIRXZgaUxraOzFUS17ZTu376M9gHIIDEjDkLKOZ8ZViwchhBT0PA7WNQQZ0bSdFz68Xq4glPXYZNQk5XCo2P4sohxferL+HieEt4XhRyNaZl7T79LB6I1Rq7rE78HoOZcK3ITg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dHZIsNLWm9YUcBwhQLJoDHocguC7TH2fapdG1LUTDLo=;
 b=I3Qf3lqZD6zNqmsPdQI3ZLex5qHyyh9HSxpgqSkx71NxphW7Hs3ygs9D9A+K8fxgXjdtqT45ovbYjCKquzTLOxo8zB+10/SaKlU/Xy8EBSiTdTVSfAEfJ3Fo3hsCmORPEz2Cn9FxJDxGiDQlc9jNpz84wY57UeWGKUHJ7i5rgn06fN+QDHvDjQq1YyDEdKej4o2fB4aYEDWCGYaJYb+6aBrT2rbxuNIihFozZigT9q7hbic5moTpQwhj6abdlBd23PuT8XiojdHBlYFcQMcTkW9CVn3TTW5kAflwlGvKGOdzkTZETNOFGJ5YqZtoAz1Zg0NjzqGGEAbQlFXg16/t+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dHZIsNLWm9YUcBwhQLJoDHocguC7TH2fapdG1LUTDLo=;
 b=aIMxV05RNy6yl6gVJ5JoTZLM6LHk/bHDNtazYNMP48y7KFTgcrMieLbfiZknf/sxZmzcohJJRlCZKegf/bkdCtGZV52vUy3Use2diNxIokSIjf/63tYwLTYwGIeKo+lJZG91hWU0j0dQQpb4ZF2aJACbMrvtdyxOiwMuhliH58g=
Received: from DM6PR11MB3964.namprd11.prod.outlook.com (2603:10b6:5:19c::28)
 by DM6PR11MB2681.namprd11.prod.outlook.com (2603:10b6:5:bd::33) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3742.6; Mon, 11 Jan
 2021 14:20:15 +0000
Received: from DM6PR11MB3964.namprd11.prod.outlook.com
 ([fe80::584e:b857:3878:d128]) by DM6PR11MB3964.namprd11.prod.outlook.com
 ([fe80::584e:b857:3878:d128%3]) with mapi id 15.20.3742.012; Mon, 11 Jan 2021
 14:20:15 +0000
From: "Xue, Ying" <Ying.Xue@windriver.com>
To: "jmaloy@redhat.com" <jmaloy@redhat.com>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: [net-next 08/16] tipc: refactor tipc_sendmsg() and
 tipc_lookup_anycast()
Thread-Index: AQHWzZMVkllt8MpvHkCN0SlSerAFDaoiqr6Q
Date: Mon, 11 Jan 2021 14:20:15 +0000
Message-ID: <DM6PR11MB3964CC67244CFB0167EAEC8684AB0@DM6PR11MB3964.namprd11.prod.outlook.com>
References: <20201208185012.265508-1-jmaloy@redhat.com>
 <20201208185012.265508-9-jmaloy@redhat.com>
In-Reply-To: <20201208185012.265508-9-jmaloy@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=windriver.com;
x-originating-ip: [123.113.103.128]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4e38efcc-13aa-4a32-5b1a-08d8b63c0431
x-ms-traffictypediagnostic: DM6PR11MB2681:
x-microsoft-antispam-prvs: <DM6PR11MB2681C1CC051814CEA624705584AB0@DM6PR11MB2681.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4502;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5VGDPtjxgsLMvYlSPQxu5oZp3z/vVSMnjEI5A48O3HZjkcMPWAjOv7Rp/v+w+B+rqvzGd3U2H8eXJBqDdlSYgvZkYaA5O0+4QPTOhj2m1Ncke9QZLSRWWCK8uYClHVISc0xi+O53uVO6V9TdU9pHbA48ldARLYmoDNZ1Ao72lbT9afmUW5MklqITxRpamXiifAHXRdC+LoQCmczYCxyOJmF3Y922m48HZkWd1tBWdlIWGfANGTpnSc7qYK5oZtOZSX0tpwq5tH9TMnraOflJLdldPb6+iFwhl7hzYBNhX/7S7D33VOcXDnr7HNc3BHyLy2286A59uQnWG8YVu+WFW+U4SWDnlCOQq94B0yoNtjprm5XWXYSjMIFmfF7KEfkpnLG4gpCBlGMkrMbOgWIpPOcT2WVFvvltNJpNAfDNpuFYy4qKoroBYQBUi7fh2Q2K
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3964.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(396003)(136003)(376002)(366004)(39850400004)(86362001)(26005)(6506007)(4326008)(66946007)(316002)(54906003)(55016002)(110136005)(52536014)(2906002)(8676002)(478600001)(4744005)(9686003)(8936002)(83380400001)(5660300002)(66556008)(66446008)(64756008)(7696005)(186003)(76116006)(66476007)(71200400001)(33656002)(9126006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?AVY7fMtSrROmkcle3IGgDnqYGgILlZEcPo+sEcKcQYHS076XwmrW7aiQzAUb?=
 =?us-ascii?Q?Ns0QnmXeued78lxeM7mOSQsbZK8Fw/1FqE7n29utgul+1DKUhpHTsY9xxUWi?=
 =?us-ascii?Q?yZuN6HAcUmETNZZNLZVVaZHgvqRWbs42EAz5YKhYFPYX+yUW3fbrD60NqZNl?=
 =?us-ascii?Q?8pbaer29eZeOWnQw7FyxCbI3gR0DnpNUbEAgKljGgy3DYoYhRC0rHX4WjcfP?=
 =?us-ascii?Q?dFgh8uv3LwWfGNTEt+3dFcjTie3PGAeBYXfKtdPnCX9D5Vfv07Y4FaBqvYCS?=
 =?us-ascii?Q?5ZsYxc9+usgiR+16WySDx3lz99hz/vVa/x9akTWbg06hwt/hKPP3oYZ+LJDc?=
 =?us-ascii?Q?L9E7D9uC1gzCicm3a1/6yEEKUC3zt9KhU5WvZFHzNnkew8c+KMseKtKWSKIh?=
 =?us-ascii?Q?h+ztOAhhgj93j+yl0vpj/l88lyeJn5+M+3q1H/nx5/9kQqWl322mcUGXIbt+?=
 =?us-ascii?Q?CrnEzziteVUv5qYLJF4B6cPda09o/aORqF/ZMMWiYL3o/NleIqbifzp+bHA8?=
 =?us-ascii?Q?Z/11iEWHLXO1fcyOBKKtpy0xTG+JqDwrLCBtIJeCxRjIR9ReLSCMt0i5xmQV?=
 =?us-ascii?Q?UhRpi01wPHft+Gyraf8qtU1RMZQ8FQbP9jKGL/OPnz3w6FZ5IUMICVun2uL3?=
 =?us-ascii?Q?xoscWScLUgAUBhCd6Ef1+5Z5PuGSFaWE/NVrICVQEai2AIyzJ+osGfrA7jsO?=
 =?us-ascii?Q?CEQfIttEwYTtZoQp4p0dh9S2Aqy1WBEcmzxdjC0XvfQiKCQXgK3I2cZcMTM7?=
 =?us-ascii?Q?EbF+lK1Mquk0CU2lgSCT12Srp8Y26V3ZT1RyN+pkCIkwxoObUce8F/3U+p/P?=
 =?us-ascii?Q?+1FPpmVxAW8gg6s2ePrn9oe/a7nBH8nRf1cHmUmUTySvuoEfSlHqDygMERbn?=
 =?us-ascii?Q?WcZF2uB5pQqCLEC+LTUupJnjjhsAWfrFFKJK19LHuhip7NrzWXofheIrGUr1?=
 =?us-ascii?Q?kWgdamlKOZ9tgGOKodUbRaayQ2qKBBMNhjrwRi4PnWQ=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3964.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4e38efcc-13aa-4a32-5b1a-08d8b63c0431
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jan 2021 14:20:15.6462 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9b7B5E/SwllKeqW68Fc3OX4NneIZ1ldA3xubcntx+tnShAyKro7G0Z3g/0Tiq13FtfDD/qcpn2R2yYqouDCygw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB2681
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.223.69 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.223.69 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kyyHG-001KFY-ER
Subject: Re: [tipc-discussion] [net-next 08/16] tipc: refactor
 tipc_sendmsg() and tipc_lookup_anycast()
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

-	seq = &dest->addr.nameseq;
-	if (dest->addrtype == TIPC_ADDR_MCAST)
-		return tipc_sendmcast(sock, seq, m, dlen, timeout);
-
-	if (dest->addrtype == TIPC_SERVICE_ADDR) {
-		type = dest->addr.name.name.type;
-		inst = dest->addr.name.name.instance;
-		dnode = dest->addr.name.domain;
-		dport = tipc_nametbl_lookup_anycast(net, type, inst, &dnode);
-		if (unlikely(!dport && !dnode))
+	/* Determine destination */
+	if (atype == TIPC_SERVICE_RANGE) {

[Ying] Regarding my understanding, we should compare "atype" with TIPC_ADDR_MCAST rather than TIPC_SERVICE_RANGE. Please help to confirm.

+		return tipc_sendmcast(sock, &ua->sr, m, dlen, timeout);
+	} else if (atype == TIPC_SERVICE_ADDR) {
+		skaddr.node = ua->lookup_node;
+		ua->scope = skaddr.node ? TIPC_NODE_SCOPE : TIPC_CLUSTER_SCOPE;
+		if (!tipc_nametbl_lookup_anycast(net, ua, &skaddr))
 			return -EHOSTUNREACH;



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
